#include "mcc_generated_files/device_config.h"
#include <stdint.h>
#include <stdbool.h>
#include <xc.h>
#include "my2c.h"
#include "ICM-20948.h"   
#include "ICM-20948_regmap.h"
#include "sensor_general.h"

//I2C addresses
static uint8_t ICM_20948_addr;
static uint8_t AK09916_mag_addr;

// This driver assumes that I2C is already initialized
bool ICM_20948_init(uint8_t ICM_20948_addr_in, uint8_t AK09916_mag_addr_in) {
    ICM_20948_addr = ICM_20948_addr_in;
    AK09916_mag_addr = AK09916_mag_addr_in;
    
    // Select user bank 0
    MY2C_write1ByteRegister(ICM_20948_addr, REG_BANK_SEL, 0x00);
    // Wake device and set clock to internal 20 MHz oscillator
    MY2C_write1ByteRegister(ICM_20948_addr, PWR_MGMT_1, 0x06);
    // Enable accelerometer and gyroscope 
    MY2C_write1ByteRegister(ICM_20948_addr, PWR_MGMT_2, 0x00);
    // Set only I2C master to low power mode
    MY2C_write1ByteRegister(ICM_20948_addr, LP_CONFIG, 0b01000000);
    
    // Select user bank 2
    MY2C_write1ByteRegister(ICM_20948_addr, REG_BANK_SEL, 0x20);
    // Set gyroscope full scale to +/-2000dps, rate = 9000 Hz
    MY2C_write1ByteRegister(ICM_20948_addr, GYRO_CONFIG_1, 0x06);
    // Set ODR for gyroscope to 50Hz. ODR = 1100HZ/(1+GYRO_SMPLRT_DIV[7:0])
    MY2C_write1ByteRegister(ICM_20948_addr, GYRO_SMPLRT_DIV, 0x15);
    
    // Set accelerometer full scale to +/- 16g, rate = 4500 Hz
    MY2C_write1ByteRegister(ICM_20948_addr, ACCEL_CONFIG, 0x06);
    // Set ODR for accelerometer to ~49Hz, ODR = 1125Hz/(1+ACCEL_SMPLRT_DIV[11:0])
    MY2C_write1ByteRegister(ICM_20948_addr, ACCEL_SMPLRT_DIV_1, 0x00);
    MY2C_write1ByteRegister(ICM_20948_addr, ACCEL_SMPLRT_DIV_2, 0x16);
    
    // Reset magnetometer
    MY2C_write1ByteRegister(AK09916_mag_addr, CNTL3, 0x01);
    // Set to continuous measurement mode 3 (50 Hz measurement frequency)
    MY2C_write1ByteRegister(AK09916_mag_addr, CNTL2, 0x06);
    
    return true;
}

bool ICM_20948_check_sanity(void) {
    // Select user bank 0
    MY2C_write1ByteRegister(ICM_20948_addr, REG_BANK_SEL, 0x00);
    
    uint8_t addr_sanity = MY2C_read1ByteRegister(ICM_20948_addr, WHO_AM_I);
    uint8_t mag_addr_sanity = MY2C_read1ByteRegister(AK09916_mag_addr, WIA2);
    
    // Sanity fails if the "who am i" registers doesn't match
    if (addr_sanity != 0xEA || mag_addr_sanity != 0x09) {
        return false;
    }

    // checks pass
    return true;
}

bool ICM_20948_get_accel_raw(int16_t *x, int16_t *y, int16_t *z) {
    if (!x || !y || !z) { return false; }
    
    // Accelerometer measurement data
    uint8_t x_h = MY2C_read1ByteRegister(ICM_20948_addr, ACCEL_XOUT_H);
    uint8_t x_l = MY2C_read1ByteRegister(ICM_20948_addr, ACCEL_XOUT_L);
    *x = (int16_t)((uint16_t)x_h << 8 | x_l);
    
    uint8_t y_h = MY2C_read1ByteRegister(ICM_20948_addr, ACCEL_YOUT_H);
    uint8_t y_l = MY2C_read1ByteRegister(ICM_20948_addr, ACCEL_YOUT_L);
    *y = (int16_t)((uint16_t)y_h << 8 | y_l);

    uint8_t z_h = MY2C_read1ByteRegister(ICM_20948_addr, ACCEL_ZOUT_H);
    uint8_t z_l = MY2C_read1ByteRegister(ICM_20948_addr, ACCEL_ZOUT_L);
    *z = (int16_t)((uint16_t)z_h << 8 | z_l);

    return true; 
}

bool ICM_20948_get_gyro_raw(int16_t *x, int16_t *y, int16_t *z) {
    if (!x || !y || !z) { return false; }
    
    uint8_t x_h = MY2C_read1ByteRegister(ICM_20948_addr, GYRO_XOUT_H);
    uint8_t x_l = MY2C_read1ByteRegister(ICM_20948_addr, GYRO_XOUT_L);
    *x = (int16_t)((uint16_t)x_h << 8 | x_l);

    uint8_t y_h = MY2C_read1ByteRegister(ICM_20948_addr, GYRO_YOUT_H);
    uint8_t y_l = MY2C_read1ByteRegister(ICM_20948_addr, GYRO_YOUT_L);
    *y = (int16_t)((uint16_t)y_h << 8 | y_l);

    uint8_t z_h = MY2C_read1ByteRegister(ICM_20948_addr, GYRO_ZOUT_H);
    uint8_t z_l = MY2C_read1ByteRegister(ICM_20948_addr, GYRO_ZOUT_L);
    *z = (int16_t)((uint16_t)z_h << 8 | z_l);

    return true;
}

bool ICM_20948_get_mag_raw(int16_t *x, int16_t *y, int16_t *z) {
    if (!x || !y || !z) { return false; }
    
     // Check if magnetometer data is ready, fail if it is not
    uint8_t mag_data_status_1 = MY2C_read1ByteRegister(AK09916_mag_addr, ST1);
    
    if (mag_data_status_1 != 0x0) {
        return false;
    }
    
    uint8_t x_h = MY2C_read1ByteRegister(AK09916_mag_addr, HXH);
    uint8_t x_l = MY2C_read1ByteRegister(AK09916_mag_addr, HXL);
    *x = (int16_t)((uint16_t)x_h << 8 | x_l);

    uint8_t y_h = MY2C_read1ByteRegister(AK09916_mag_addr, HYH);
    uint8_t y_l = MY2C_read1ByteRegister(AK09916_mag_addr, HYL);
    *y = (int16_t)((uint16_t)y_h << 8 | y_l);

    uint8_t z_h = MY2C_read1ByteRegister(AK09916_mag_addr, HZH);
    uint8_t z_l = MY2C_read1ByteRegister(AK09916_mag_addr, HZL);
    *z = (int16_t)((uint16_t)z_h << 8 | z_l);

    // Must read ST2 register after measurement, see datasheet register 13.4 ST2
    MY2C_read1ByteRegister(AK09916_mag_addr, ST2);
    
    return true;
}

//IMU has a temperature sensor, it is not being used

//bool ICM_20948_get_temp_raw(int16_t *temp) {
//    uint8_t t_h = MY2C_read1ByteRegister(ICM_20948_addr, TEMP_OUT_H);
//    uint8_t t_l = MY2C_read1ByteRegister(ICM_20948_addr, TEMP_OUT_L);
//    *temp = (int16_t)((uint16_t)t_h << 8 | t_l);
// }

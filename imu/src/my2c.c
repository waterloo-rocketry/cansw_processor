#include <stdbool.h>
#include "my2c.h"

#include <zephyr/kernel.h>
#include <zephyr/drivers/i2c.h>
#include <zephyr/device.h>

extern const struct device *const i2c_dev;

bool MY2C_write(uint8_t address, uint8_t *data, uint8_t len) {
   return i2c_write(i2c_dev, data, len, address);
}

bool MY2C_read(uint8_t address, uint8_t *data, uint8_t len) {
    return i2c_read(i2c_dev, data, len, address);
}

bool MY2C_writeCmd(uint8_t address, uint8_t cmd) {
    return MY2C_write(address, &cmd, 1);
}

void MY2C_readNByteRegister(uint8_t address, uint8_t reg, uint8_t *data, uint8_t len) {
    MY2C_write(address, &reg, 1);
    MY2C_read(address, data, len);
}

bool MY2C_write1ByteRegister(uint8_t address, uint8_t reg, uint8_t val) {
    uint8_t data[2] = {reg, val};
    return MY2C_write(address, data, 2);
}

uint8_t MY2C_read1ByteRegister(uint8_t address, uint8_t reg) {
    uint8_t data;
    MY2C_readNByteRegister(address, reg, &data, 1);
    return data;
}

uint16_t MY2C_read2ByteRegister(uint8_t address, uint8_t reg) {
    MY2C_write(address, &reg, 1);
    uint8_t data[2];
    MY2C_read(address, data, 2);
    return (uint16_t)(data[0]) << 8 | data[1];
}

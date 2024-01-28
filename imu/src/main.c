/*
 * Copyright (c) 2016 Intel Corporation
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <zephyr/kernel.h>
#include <zephyr/drivers/gpio.h>
#include <zephyr/drivers/i2c.h>
#include <zephyr/device.h>
#include "ICM-20948.h"
#include <zephyr/logging/log.h>

/* 1000 msec = 1 sec */
#define SLEEP_TIME_MS 100

#define LED0_NODE DT_ALIAS(led0)
#define I2C4 DT_NODELABEL(i2c4)

static const struct gpio_dt_spec led = GPIO_DT_SPEC_GET(LED0_NODE, gpios);

const struct device *const i2c_dev = DEVICE_DT_GET(I2C4);
uint32_t i2c_cfg = I2C_SPEED_SET(I2C_SPEED_STANDARD) | I2C_MODE_CONTROLLER;

LOG_MODULE_REGISTER(a, LOG_LEVEL_DBG);


int main(void)
{
	//configure I2C

	uint32_t i2c_cfg_tmp;

	if (!device_is_ready(i2c_dev)) {
		
		return 0;
	}

	/* 1. Verify i2c_configure() */
	if (i2c_configure(i2c_dev, i2c_cfg)) {
		
		return 0;
	}

	/* 2. Verify i2c_get_config() */
	if (i2c_get_config(i2c_dev, &i2c_cfg_tmp)) {
		
		return 0;
	}
	if (i2c_cfg != i2c_cfg_tmp) {
		
		return 0;
	}


	//init IMU
	while(!ICM_20948_init(ICM_20948_ADDR, AK09916_MAG_ADDR));
	while(!ICM_20948_check_sanity());

	//blinky init stuff
	int ret;

	if (!gpio_is_ready_dt(&led)) {
		return 0;
	}

	ret = gpio_pin_configure_dt(&led, GPIO_OUTPUT_ACTIVE);
	if (ret < 0) {
		return 0;
	}

	while (1) {
		int16_t data[3];
		//ICM_20948_get_accel_raw(data, data+1, data+2);
		ICM_20948_get_gyro_raw(data, data+1, data+2);
		printk("x: %d, y: %d, z: %d\n", data[0], data[1], data[2]);

		ret = gpio_pin_toggle_dt(&led);
		if (ret < 0) {
			return 0;
		}
		k_msleep(SLEEP_TIME_MS);
	}

	return 0;
}

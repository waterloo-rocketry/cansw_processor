/*
 * Copyright (c) 2012-2014 Wind River Systems, Inc.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <stdio.h>
//#include <devicetree.h>
#include <zephyr/logging/log.h>
#include <zephyr/drivers/can.h>
#include <zephyr/device.h>

LOG_MODULE_REGISTER(a, LOG_LEVEL_DBG);

#define FDCAN1 DT_NODELABEL(fdcan1)
static const struct device *const can_dev = DEVICE_DT_GET(FDCAN1);

int main(void)
{
	printk("Hello World!\n");

	//https://docs.zephyrproject.org/latest/hardware/peripherals/can/controller.html#sending
	struct can_frame frame = {
        .flags = 0,
        .id = 0x123,
        .dlc = 8,
        .data = {1,2,3,4,5,6,7,8}
	};

	uint32_t *max = 0;
	uint32_t *curr = 0;

	// can_get_max_bitrate(can_dev, max);
	// can_get_core_clock(can_dev, curr);

	// printk("Max: %d, Core: %d", *max, *curr);

	if (!device_is_ready(can_dev)) {
		printf("CAN: Device %s not ready.\n", can_dev->name);
		return 0;
	}

	volatile int ret = 0;
	uint32_t *set = 42000;
	can_set_bitrate(can_dev, set);

	ret = can_set_mode(can_dev, CAN_MODE_LOOPBACK);
	if (ret != 0) {
		printf("Error setting CAN mode [%d]", ret);
		return 0;
	}

	ret = can_start(can_dev);
	if (ret != 0) {
			printk("Starting failed [%d]", ret);
	}

	

	ret = can_send(can_dev, &frame, K_MSEC(100), NULL, NULL);
	if (ret != 0) {
			printk("Sending failed [%d]", ret);
	}

	printk("Goodbye world!\n");

	return 0;
}

/*
 * Copyright (c) 2012-2014 Wind River Systems, Inc.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <stdio.h>
#include <zephyr/logging/log.h>
#include <zephyr/kernel.h>
#include <zephyr/drivers/gpio.h>
#include <zephyr/drivers/uart.h>
#include <string.h>

LOG_MODULE_REGISTER(a, LOG_LEVEL_DBG);

void second(void);

int main(void)
{
    printk("Hello World!\n");
    // LOG_INF("Hello World! \n");
    //printf("Hello World!\n");
	second();
    return 0;
}


#define LED0_NODE DT_ALIAS(led0)
static const struct gpio_dt_spec led = GPIO_DT_SPEC_GET(LED0_NODE, gpios);

#define UART_NODE DT_NODELABEL(uart4)
const struct device *uart_device;

// UART receive buffer
#define UART_BUFF_SIZE 4
static uint8_t uart_buff[UART_BUFF_SIZE];

void uart_callback(const struct device *dev, void *user_data) {

    ARG_UNUSED(user_data);

    if (!uart_irq_update(dev)) {
        return;
    }

    if (uart_irq_rx_ready(dev)) {
        int recv_len;
        recv_len = uart_fifo_read(dev, uart_buff, sizeof(uart_buff));
        if (recv_len)
        {
            uart_buff[recv_len] = '\0';

            if (strcmp(uart_buff, "ON") == 0) {
                gpio_pin_set_dt(&led, 1); // Turn on the LED
            }
            else if (strcmp(uart_buff, "OFF") == 0) {
                gpio_pin_set_dt(&led, 0); // Turn off the LED
            }

            memset(uart_buff, 0, sizeof(uart_buff));
        }
    }
}

void second(void) {

    int ret;

    if (!gpio_is_ready_dt(&led)) {
        return;
    }

    ret = gpio_pin_configure_dt(&led, GPIO_OUTPUT_INACTIVE);

    if (ret < 0) {
        return;
    }

    uart_device = device_get_binding(UART_NODE);

    if (!uart_device) {
        return;
    }

    uart_irq_callback_set(uart_device, uart_callback);
    uart_irq_rx_enable(uart_device);

    // Main loop
    while (1) {
        k_msleep(100); // Sleep time reduced to improve responsiveness
    }
}


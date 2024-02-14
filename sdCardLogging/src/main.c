/*
 * Copyright (c) 2022 Rodrigo Peixoto <rodrigopex@gmail.com>
 * SPDX-License-Identifier: Apache-2.0
 */

#include <stdint.h>

#include <zephyr/kernel.h>
#include <zephyr/logging/log.h>
#include <zephyr/zbus/zbus.h>
LOG_MODULE_DECLARE(zbus, CONFIG_ZBUS_LOG_LEVEL);

struct our_zbus_message {
	int type;
	char* content;
};

static bool our_channel_validator(const void *message, size_t message_size) {
	ARG_UNUSED(message_size);

	const struct our_zbus_message *recieved_message = message;

	bool validType = (recieved_message->type >= 0 && recieved_message->type <= 5);

	return validType;
}

ZBUS_CHAN_DEFINE(
	our_channel, // name of channel
	struct our_zbus_message, // type of message on this channel
	our_channel_validator, // validator (function to flush out invalid messages)
	NULL, // User Data
	ZBUS_OBSERVERS(our_channel_listener, our_channel_subscriber), // observers
	ZBUS_MSG_INIT(.type = 0, .content = "", .contentSize = 0) // inital value
);

static void observer_function(const struct zbus_channel *chan) {
	if (chan != &our_channel) return;

	const struct our_zbus_message *recieved_message = zbus_chan_const_msg(chan);

	LOG_INF(
		"Observer got a message of type %d, size %d, with content '%s'",
		recieved_message->type,
		recieved_message->contentSize,
		recieved_message->content
	);
}

ZBUS_LISTENER_DEFINE(our_channel_listener, observer_function);


int main(void) {
	LOG_INF("======= Starting simple SD Card Logging Test =======");




	LOG_INF("Exiting");
	return 0;
}
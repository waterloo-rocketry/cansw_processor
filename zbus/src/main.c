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
	int contentSize;
};

static bool our_channel_validator(const void *message, size_t message_size) {
	ARG_UNUSED(message_size);

	const struct our_zbus_message *recieved_message = message;

	bool validType = (recieved_message->type >= 0 && recieved_message->type <= 5);
	bool contentSizeCorrect = (recieved_message->contentSize == strlen(recieved_message->content));

	if (!validType) {
		LOG_INF("Invalid type %d", recieved_message->type);
	}

	if (!contentSizeCorrect) {
		LOG_INF("Content size mismatched, expected %d found %d", recieved_message->contentSize, strlen(recieved_message->content));
	}

	return (validType && contentSizeCorrect);
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
ZBUS_SUBSCRIBER_DEFINE(our_channel_subscriber, 4);

static void subscriber_listen(void) {
	const struct zbus_channel *chan;

	while (!zbus_sub_wait(&our_channel_subscriber, &chan, K_FOREVER)) {
		if (chan != &our_channel) continue;

		struct our_zbus_message recieved_message;
		zbus_chan_read(&our_channel, &recieved_message, K_MSEC(500));

		LOG_INF("Subscriber read a message on channel %s: '%s'", zbus_chan_name(chan), recieved_message.content);
	}
}

K_THREAD_DEFINE(
	subscriber_thread, // name
	CONFIG_MAIN_STACK_SIZE, // stack size
	subscriber_listen, // entry
	NULL, // param 1
	NULL, // param 2
	NULL, // param 3
	3, // thread priority
	0, // options
	0 // delay
);


int main(void) {
	LOG_INF("======= Starting simple zbus sample =======");

	LOG_INF("Publishing a valid message to channel...");
	struct our_zbus_message message = {
		.type = 0,
		.content = "testing",
		.contentSize = strlen("testing")
	};
	int error = zbus_chan_pub(&our_channel, &message, K_SECONDS(1));

	if (error) {
		LOG_INF("We failed to send a valid message, this is bad!");
	}

	k_msleep(1000);

	LOG_INF("Publishing invalid message to channel...");
	message.content = "This is a new message";
	int error2 = zbus_chan_pub(&our_channel, &message, K_SECONDS(1));

	if (error2 && !error) {
		LOG_INF("Invalid message caught by the validator!");
	} else if (error2) {
		LOG_INF("Both messages failed! This is bad");
	}

	LOG_INF("Exiting");
	return 0;
}
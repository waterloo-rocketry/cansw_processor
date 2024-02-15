/*
 * Copyright (c) 2022 Rodrigo Peixoto <rodrigopex@gmail.com>
 * SPDX-License-Identifier: Apache-2.0
 */

#include <stdint.h>

#include <zephyr/kernel.h>
#include <zephyr/logging/log.h>
#include <zephyr/zbus/zbus.h>
LOG_MODULE_DECLARE(zbus, CONFIG_ZBUS_LOG_LEVEL);

enum LoggingTypes {
	WRITE,
	READ,
	NUMBER_OF_LOGGING_TYPES,
};

typedef struct LoggingMessage {
	enum LoggingTypes type;
	char* content;
} LoggingMessage;

static bool log_channel_validator(const void *message, size_t message_size) {
	ARG_UNUSED(message_size);

	const LoggingMessage *recieved_message = message;

	bool validType = (recieved_message->type >= 0 && recieved_message->type < NUMBER_OF_LOGGING_TYPES);

	if (!validType) {
		LOG_INF("Invalid type %d", recieved_message->type);
	}

	return validType;
}

ZBUS_CHAN_DEFINE(
	LoggingChannel, // name of channel
	LoggingMessage, // type of message on this channel
	log_channel_validator, // validator (function to flush out invalid messages)
	NULL, // User Data
	ZBUS_OBSERVERS(loggingListener), // observers
	ZBUS_MSG_INIT(.type = 0, .content = "") // inital value
);

static void loggingListenerFunction(const struct zbus_channel *chan) {
	if (chan != &LoggingChannel) return;

	const LoggingMessage *message = zbus_chan_const_msg(chan);

	LOG_INF(
		"Listener got a message of type %d, with content '%s'",
		message->type,
		message->content
	);
}

ZBUS_LISTENER_DEFINE(loggingListener, loggingListenerFunction);


int main(void) {
	LOG_INF("======= Starting simple sd card logging sample =======");

	LOG_INF("Publishing a valid message to channel...");
	LoggingMessage message = {
		.type = WRITE,
		.content = "testing"
	};
	int error = zbus_chan_pub(&LoggingChannel, &message, K_SECONDS(1));

	if (error) {
		LOG_INF("We failed to send a valid message, this is bad!");
	}

	k_msleep(1000);

	LOG_INF("Publishing invalid message to channel...");
	message.content = "This is a new message";
	message.type = NUMBER_OF_LOGGING_TYPES;
	int error2 = zbus_chan_pub(&LoggingChannel, &message, K_SECONDS(1));

	if (error2 && !error) {
		LOG_INF("Invalid message caught by the validator!");
	} else if (error2) {
		LOG_INF("Both messages failed! This is bad");
	}

	LOG_INF("Exiting");
	return 0;
}
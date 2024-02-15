/*
 * Copyright (c) 2022 Rodrigo Peixoto <rodrigopex@gmail.com>
 * SPDX-License-Identifier: Apache-2.0
 */

#include <stdint.h>

#include <zephyr/kernel.h>
#include <zephyr/device.h>
#include <zephyr/storage/disk_access.h>
#include <zephyr/fs/fs.h>
#include <zephyr/fs/fs_sys.h>
#include <stdlib.h>
#include <ff.h>

#include <zephyr/logging/log.h>
#include <zephyr/zbus/zbus.h>
LOG_MODULE_DECLARE(zbus, CONFIG_ZBUS_LOG_LEVEL);

#define DISK_DRIVE_NAME "SD"
#define DISK_MOUNT_PT "/"DISK_DRIVE_NAME":"
#define MAX_PATH 128

static FATFS fat_fs;

static const char *disk_mount_pt = DISK_MOUNT_PT;

// --- SD Card Stuff ------------

int mountDisk(struct fs_mount_t *mp) {
	printk("Mounting disk:\n");
	// note: make sure mp is static

	printk("Accessing disk...\n");
	if (disk_access_init(DISK_DRIVE_NAME) != 0) {
		printk("Failed to initalize disk access\n");
		return 1;
	}

	mp->mnt_point = disk_mount_pt;
	mp->type = FS_FATFS;
	mp->fs_data = &fat_fs;

	printk("Attempting to mount disk\n");
	int res = fs_mount(mp);

	switch (res) {
		case 0:
			printk("Successfully mounted disk\n");
			break;
		case -16: 
			printk("Failed to mount disk because disk is 'busy'. Make sure `mp` is static\n");
			break;
		default: 
			printk("Failed to mount disk! (%d)\n", res);
			break;
	}

	return res;
}

// -----------------------------------

typedef struct LoggingMessage {
	char* content;
	char* path;
} LoggingMessage;

ZBUS_CHAN_DEFINE(
	LoggingChannel, // name of channel
	LoggingMessage, // type of message on this channel
	NULL, // validator (function to flush out invalid messages)
	NULL, // User Data
	ZBUS_OBSERVERS(loggingListener), // observers
	ZBUS_MSG_INIT(.content = "", .path = "") // inital value
);

static void loggingListenerFunction(const struct zbus_channel *chan) {
	if (chan != &LoggingChannel) return;

	const LoggingMessage *message = zbus_chan_const_msg(chan);

	printk(
		"Listener got a message with path '%s', and content '%s'\n",
		message->path,
		message->content
	);

	static struct fs_mount_t mp;
	int res = mountDisk(&mp);

	if (res) {
		printk("Failed to mount disk (%d)\n", res);
		return;
	}

	printk("Opening file\n");
	struct fs_file_t file;
	fs_file_t_init(&file);

	res = fs_open(&file, message->path, FS_O_APPEND | FS_O_CREATE);

	printk("OPen res: %d\n", res);

	printk("Writing to file\n");

	res = fs_write(&file, message->content, strlen(message->content));

	printk("write response %d\n", res);

	printk("closing file\n");
	fs_close(&file);

	fs_unmount(&mp);
}

ZBUS_LISTENER_DEFINE(loggingListener, loggingListenerFunction);

int main(void) {
	printk("======= Starting sd card logging sample =======\n");

	printk("Publishing a valid message to channel...\n");
	LoggingMessage message = {
		.content = "testing",
		.path = "/Testing"
	};
	int error = zbus_chan_pub(&LoggingChannel, &message, K_SECONDS(1));

	if (error) {
		printk("We failed to send a valid message, this is bad!\n");
	}


	printk("Exiting\n");
	return 0;
}
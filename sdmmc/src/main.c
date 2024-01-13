/*
 * Copyright (c) 2019 Tavish Naruka <tavishnaruka@gmail.com>
 * Copyright (c) 2023 Nordic Semiconductor ASA
 * Copyright (c) 2023 Antmicro <www.antmicro.com>
 *
 * SPDX-License-Identifier: Apache-2.0
 */

/* Sample which uses the filesystem API and SDHC driver */

#include <zephyr/kernel.h>
#include <zephyr/device.h>
#include <zephyr/storage/disk_access.h>
#include <zephyr/logging/log.h>
#include <zephyr/fs/fs.h>
#include <zephyr/fs/fs_sys.h>


#include <ff.h>

/*
 *  Note the fatfs library is able to mount only strings inside _VOLUME_STRS
 *  in ffconf.h
 */
#define DISK_DRIVE_NAME "SD"
#define DISK_MOUNT_PT "/"DISK_DRIVE_NAME":"

static FATFS fat_fs;
/* mounting info */
static struct fs_mount_t mp = {
	.type = FS_FATFS,
	.fs_data = &fat_fs,
};

LOG_MODULE_REGISTER(main);
#define MAX_PATH 128

int makeDirectory(const char *pathToDirectory) {
	// assume relative to DISK_MOUNT_PT
	// e.g. /SD:/somedirname1/somedirname2 -> /somedirname1/somedirname2

	char path[MAX_PATH];
	int base = strlen(DISK_MOUNT_PT);
	strncpy(path, DISK_MOUNT_PT, sizeof(path));

	path[base] = 0;
	strcat(&path[base], pathToDirectory);
	
	int mkdirResult = fs_mkdir(path);
	if (mkdirResult) {
		printk("Failed to create directory: ");
		switch (mkdirResult) {
			case -17:
				printk("directory already exists");
				break;
		}
		printk("\n");
	}


	return mkdirResult;
}

int createFile(const char *pathToFile, struct fs_file_system_t *file) {
	// assume relative to DISK_MOUNT_PT
	// e.g. /SD:/somedirname1/somedirname2/a.txt -> /somedirname1/somedirname2/a.txt

	char path[MAX_PATH];
	int base = strlen(DISK_MOUNT_PT);
	strncpy(path, DISK_MOUNT_PT, sizeof(path));

	path[base] = 0;
	strcat(&path[base], pathToFile);

	int res = fs_open(file, path, FS_O_CREATE);
	fs_close(file);

	return res;
}

int openFile(const char *pathToFile, struct fs_file_system_t *file) {
	// assume relative to DISK_MOUNT_PT
	// e.g. /SD:/somedirname1/somedirname2/a.txt -> /somedirname1/somedirname2/a.txt

	char path[MAX_PATH];
	int base = strlen(DISK_MOUNT_PT);
	strncpy(path, DISK_MOUNT_PT, sizeof(path));

	path[base] = 0;
	strcat(&path[base], pathToFile);

	int res = fs_open(file, path, FS_O_RDWR);

	return res;
}



static const char *disk_mount_pt = DISK_MOUNT_PT;

int main(void) {
	// initalize so that mount works
	if (disk_access_init(DISK_DRIVE_NAME) != 0) {
		printk("Failed to initalize disk access");
		return 1;
	}

	mp.mnt_point = disk_mount_pt;

	int res = fs_mount(&mp);


	if (res == FR_OK) {
		printk("Disk mounted.\n");
		printk("Trying to make a directory\n");


		int mkdirRes = makeDirectory("/testing");
		// printk("Trying to write a file to that directory");
		int mkdirRes2 = makeDirectory("/againthing");

		struct fs_file_system_t file;
		int mkFileRes = createFile("/testing/a.txt", &file);

		printk("trying to write to that file");

		openFile("/testing/a.txt", &file);

		char* buffer = "testing things";
		int size = strlen(buffer) * sizeof(char);

		int res = fs_write(&file, buffer, size);
		printk("We successfully wrote? %d bytes: %d\n", size, res);
		fs_close(&file);


		// res = makeDirectory("/somethingnew");
		// printk("res %d\n", res);
		// res = createFile("/somethingnew/somefile.txt", &file);
		// printk("res %d\n", res);
		// res = openFile("/somethingnew/somefile.txt", &file);
		// printk("res %d\n", res);
		// char* newbuffer = "something else this is a file testing I dunno even man this is weird";
		// size = strlen(newbuffer) * sizeof(char);
		// fs_write(&file, newbuffer, size);
		// fs_close(&file);


		// char path[MAX_PATH];
		// strncpy(path, disk_mount_pt, sizeof(path));
		// int base = strlen(disk_mount_pt);
		// path[base++] = '/';

		// path[base] = 0;
		// strcat(&path[base], "what");

		// int mkDirRes = fs_mkdir(path);


		// // trying to read root directory. Unable to read until we get print statements working
		// int mkDirRes = makeDirectory("/testing");
		// if (mkDirRes == -17 || mkDirRes == 0) {
		// 	struct fs_dir_t directoryObj;
		// 	fs_dir_t_init(&directoryObj);

		// 	// make path to directory`
		// 	char path[MAX_PATH];
		// 	int base = strlen(DISK_MOUNT_PT);
		// 	strncpy(path, DISK_MOUNT_PT, sizeof(path));

		// 	path[base] = 0;
		// 	strcat(&path[base], "");

		// 	// open the directory
		// 	int opendirRes = fs_opendir(&directoryObj, path);

		// 	if (opendirRes) {
		// 		printk("Failed to open the directory\n");
		// 		return opendirRes;
		// 	}

		// 	struct fs_dirent entry;
		// 	for (;;) {
		// 		/* Verify fs_readdir() */
		// 		res = fs_readdir(&directoryObj, &entry);

		// 		/* entry.name[0] == 0 means end-of-dir */
		// 		if (res || entry.name[0] == 0) {
		// 			break;
		// 		}

		// 		if (entry.type == FS_DIR_ENTRY_DIR) {
		// 			printk("[DIR ] %s\n", entry.name);
		// 		} else {
		// 			printk("[FILE] %s (size = %zu)\n",
		// 				entry.name, entry.size);
		// 		}
		// 	}

		// }

	} else {
		printk("Error mounting disk.\n");
	}

	fs_unmount(&mp);

	while (1) {
		k_sleep(K_MSEC(1000));
	}
	return 0;
}

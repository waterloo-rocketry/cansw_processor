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
#include <stdlib.h>


#include <ff.h>

/*
 *  Note the fatfs library is able to mount only strings inside _VOLUME_STRS
 *  in ffconf.h
 */
#define DISK_DRIVE_NAME "SD"
#define DISK_MOUNT_PT "/"DISK_DRIVE_NAME":"
#define MAX_PATH 128

static FATFS fat_fs;


static const char *disk_mount_pt = DISK_MOUNT_PT;

int mountDisk(struct fs_mount_t *mp) {
	// note: make sure mp is static

	printk("Accessing disk...\n");
	if (disk_access_init(DISK_DRIVE_NAME) != 0) {
		printk("Failed to initalize disk access");
		return 1;
	}

	mp->mnt_point = disk_mount_pt;
	mp->type = FS_FATFS;
	mp->fs_data = &fat_fs;

	printk("Attempting to mount disk\n");
	int res = fs_mount(mp);

	switch (res) {
		case -16: 
			printk("Busy. Make sure `mp` is static\n");
			break;
	}

	return res;
}

int testReadDir(const char *path) {
	printk("Testing Read Dir\n");

	struct fs_dir_t dirp;
	fs_dir_t_init(&dirp);

	printk("Opening directory\n");
	int res = fs_opendir(&dirp, path);
	if (res) {
		printk("Error opening dir %s\n [%d]\n", path, res);
		return res;
	}
	printk("Dir opened successfully\n");

	printk("Listing Dir %s ...\n", path);
	int directoryCount = 0;
	for (;; ++directoryCount) {
		struct fs_dirent entry;
		res = fs_readdir(&dirp, &entry);

		if (res || entry.name[0] == 0) {
			break;
		}

		if (entry.type == FS_DIR_ENTRY_DIR) {
			printk("[DIR] %s\n", entry.name);
		} else {
			printk("[FILE] %s (size = %zu)\n", entry.name, entry.size);
		}
	}

	printk("Closing dir\n");

	fs_closedir(&dirp);

	if (res == 0) {
		res = directoryCount;
	}

	printk("Close responded with: %d\n", res);

	return res;
}

int testReadFile(const char *path) {

	struct fs_dirent entry;
	printk("stating file at %s\n", path);
	int res = fs_stat(path, &entry);

	if (res) {
		printk("Failed to stat file\n");
		return res;
	}

	printk("File name: %s | File size: %d\n", entry.name, entry.size);

	printk("Initing file obj\n");
	struct fs_file_t file;
	fs_file_t_init(&file);

	printk("Opening file with read permissions\n");
	res = fs_open(&file, path, FS_O_READ);

	if (res) {
		printk("Open failed\n");
		return res;
	}

	printk("Reading the file with buffer of size %d\n", entry.size + 1);
	char *buffer = (char*) calloc(entry.size + 1, sizeof(char));
	printk("Reading\n");
	res = fs_read(&file, buffer, entry.size);
	if (res < 0) {
		printk("Failed to read file %d\n", res);
		free(buffer);
		return res;
	}

	printk("Result:\n");
	printk("'%s'\n", buffer);

	printk("Freeing buffer\n");
	free(buffer);

	return 0;
}

int testCreateDirectory(const char *path) {
	printk("Making Directory %s\n", path);
	int res = fs_mkdir(path);
	if (res) {
		printk("mkdir failed %d\n", res);

		if (res == -17) {
			printk("The directory already exists\n");
		} else if (res == -2) {
			printk("This seems to mean that the directory name was too long\n");
		}
		return res;
	}

	printk("Directory made successfully\n");
	return 0;

}

int testCreateFile(const char *path) {
	printk("Making a file %s\n", path);

	struct fs_file_t file;
	fs_file_t_init(&file);

	printk("Creating file\n");
	int res = fs_open(&file, path, FS_O_CREATE);
	if (res) {
		printk("Failed to create file %d\n", res);
		return res;
	}

	printk("File created successfully\n");

	printk("closing file\n");
	fs_close(&file);

	return 0;
}

int testWriteFile(const char* path, const char* buffer, const int size) {
	printk("Writing to file %s\n", path);

	struct fs_file_t file;
	fs_file_t_init(&file);

	printk("Opening the file with write permission\n");
	int res = fs_open(&file, path, FS_O_WRITE);
	
	if (res) {
		printk("Failed to open file %d\n", res);
		return res;
	}

	printk("Opened file, writing to it\n");
	res = fs_write(&file, buffer, size);

	if (res < 0) {
		printk("Failed to write to file %d\n", res);
		return res;
	}

	printk("Print succeeded\n");
	printk("Closing file\n");
	fs_close(&file);

	return 0;

	
}



int main(void) {
	printk("---------------Running test suite---------------\n");

	static struct fs_mount_t mp;
	int res = mountDisk(&mp);

	printk("Mount Responded with: %d\n", res);

	// test
	char *path = (char*) calloc(MAX_PATH, sizeof(char));

	strcat(path, disk_mount_pt);
	strcat(path, "/TOLNG");
	printk("Dir path '%s'\n", path);

	testCreateDirectory(path);

	strcat(path, "/a.txt");
	printk("file path '%s'\n", path);
	testCreateFile(path);

	char *content = "This is some stuff that should go into the file";
	int size = strlen(content);
	printk("trying to write %d bytes '%s' to '%s'\n", size, content, path);
	testWriteFile(path, content, size);

	path[0] = '\0';

	printk("Reading dirs\n");
	strcat(path, disk_mount_pt);
	testReadDir(path);

	strcat(path, "/TOLNG");
	testReadDir(path);

	printk("Reading file\n");
	strcat(path, "/a.txt");
	testReadFile(path);

	path[0] = '\0';
	
	


	

	printk("Unmounting disk\n");
	fs_unmount(&mp);

	free(path);

	


	while (1) {
		k_sleep(K_MSEC(1000));
	}
	return 0;
}

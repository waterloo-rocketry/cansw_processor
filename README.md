# cansw_processor
Firmware for processor board and Zephyr test environment.
## Cloning
Note that this code, unlike most other RocketCAN software, is **not** developed in MPLAB. It is developed using ZephyrOS. We use Zephyr's default C toolchain and build system. Zephyr has a builtin tool called `west` which manages building and flashing code for most boards, as well as updating and configuring Zephyr.

To get started with Zephyr, follow [this guide](https://docs.zephyrproject.org/latest/develop/getting_started/index.html) for your particular OS. You may have some of the dependencies already. **If you have Python 3.12.x installed, things may break** unless you really know what you are doing. Zephyr relies on certain custom packages which have not yet been ported to Python 3.12. If this is the case, before doing anything in the guide, uninstall all Python versions and let the dependecy manager choose what version of Python to install (generally 3.11.x).

Once you have installed and configured Zephyr and its SDK, you will need to clone this repository *inside* `zephyrproject/` (or whatever you called the equivalent directory during the install process):

```bash
joedo@BASEDBOOK MINGW64 ~/zephyrproject$ git clone https://github.com/waterloo-rocketry/cansw_processor.git
```
    

Zephyr refers to this as a workspace application.
## Project Organization
Zephyr projects consist of three main components:
- Source code (instructions written in C)
- Devicetree (A tree-based hardware description language similar to JSON)
- Kconfig (A markup language used to make compile-time chip configurations, similar to MPLAB's `#pragma config`)

Zephyr processes the relevant devicetree and kconfig files into C headers, which are then included in the source code. The source code also has access to Zephyr's kernel functions. The source code then undergoes the standard C compilation process into an executable, which west flashes to your board.

Inside of the repository, you can have multiple "projects" consisting of different source code, devicetree, etc. By default, the build output for any of these projects is placed in a top level `build/` directory. Best practice when making a branch is to make one of these "projects" inside of `cansw_processor/`. [This section](https://docs.zephyrproject.org/latest/develop/application/index.html#creating-an-application-by-hand) of the docs shows the basic elements required to build any code with Zephyr. You can also take a look at the sample applications in `zephyrproject/samples/`, which cover much of the basics.

## Building Blinky for CANHW Processor

Zephyr is designed to build generic C source code for any supported board. Since our board isn't one of the ones with existing support, we have a bunch of custom configuration files inside of `cansw_processor/boards/`. These files were written following the board porting guide [here](https://docs.zephyrproject.org/latest/hardware/porting/board_porting.html). This folder also contains `openocd.cfg`. We use OpenOCD to flash the code onto the actual board. To do so, you will need to [install OpenOCD for your operating system](https://docs.zephyrproject.org/latest/develop/flash_debug/host-tools.html#openocd-debug-host-tools) and add it to PATH.

You have to make some edits to the config file to get the code to build. From your zephyrproject folder, run `cd .west` and you should see a file called config. `vim config` and you should see 6 lines in it. Change line 2 to read `path = cansw_processor` rather than `path = zephyr` and save. 

When building the code for the first time, you will want to do a pristine build (similar to "Clean and Make" in MPLAB). You also need to be in a very specific directory to do this. 

```console
C:\Users\joedo\zephyrproject> .venv\Scripts\activate.bat
(.venv) C:\Users\joedo\zephyrproject> cd cansw_processor
(.venv) C:\Users\joedo\zephyrproject\cansw_processor> west build -p always -b processor blinky
```

This
1. Tells west to build our code
2. Tells west to do a pristine build
3. Tells west we are targetting our "processor" hardware configuration
4. Tells west the source code we want to build, in this case `cansw_processor/blinky/`

Note that this command won't work if you are not exactly in this directory (and the source code location is specified as above). This has to do with where west expects to find a bunch of different files. Now onto flashing. First things first, make sure the programmer is connected to your computer and the board correctly. Then run:

```console
(.venv) C:\Users\joedo\zephyrproject\cansw_processor> west flash
```

This command will automatically attempt a rebuild if you have changed files since your last build. If your code loads but isn't behaving as expected, time for

```console
(.venv) C:\Users\joedo\zephyrproject\cansw_processor> west debug
```

This will start the gdb server, and now you get to learn gdb.




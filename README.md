# cansw_processor
Firmware for processor board and Zephyr test environment.
## Cloning
Note that this code, unlike most other RocketCAN software, is **not** developed in MPLAB. It is developed using ZephyrOS. We use Zephyr's default C toolchain and build system. Zephyr has a builtin tool called `west` which manages building and flashing code for most boards, as well as updating and configuring Zephyr.

To get started with Zephyr, follow [this guide](https://docs.zephyrproject.org/latest/develop/getting_started/index.html) for your particular OS. You may have some of the dependencies already. **If you have Python 3.12.x installed, things may break** unless you really know what you are doing. Zephyr relies on certain custom packages which have not yet been ported to Python 3.12. If this is the case, before doing anything in the guide, uninstall all Python versions and let the dependecy manager choose what version of Python to install (generally 3.11.x).

Once you have installed and configured Zephyr and its SDK, you will need to clone this repository *inside* `zephyrproject/` (or whatever you called the equivalent directory during the install process):


    joedo@BASEDBOOK MINGW64 ~/zephyrproject$ git clone https://github.com/waterloo-rocketry/cansw_processor.git

Zephyr refers to this as a workspace application.
## Project Organization
Zephyr projects consist of three main components:
- Source code (instructions written in C)
- Devicetree (A tree-based hardware description language similar to JSON)
- Kconfig (A markup language used to make compile-time chip configurations, similar to MPLAB's `#pragma config`)

Zephyr processes the relevant devicetree and kconfig files into C headers, which are then included in the source code. The source code also has access to Zephyr's kernel functions. The source code then undergoes the standard C compilation process into an executable, which west flashes to your board.

Inside of the repository, you can have multiple "projects" consisting of different source code, devicetree, etc. By default, the build output for any of these projects is placed in a top level `build/` directory. Best practice when making a branch is to make one of these "projects" inside of `cansw_processor/`. [This section](https://docs.zephyrproject.org/latest/develop/application/index.html#creating-an-application-by-hand) of the docs shows the basic elements required to build any code with Zephyr. You can also take a look at the sample applications in `zephyrproject/samples/`, which cover much of the basics.

## Building

WIP

- build from pristine the first time
- specify custom board with name TBD
- target `<inner_dirctory>` when building `zephyrproject/cansw_processor/<inner_dirctory>`, make sure you are inside of `cansw_processor`:

    
    joedo@BASEDBOOK MINGW64 ~/zephyrproject/cansw_processor$ west build ...




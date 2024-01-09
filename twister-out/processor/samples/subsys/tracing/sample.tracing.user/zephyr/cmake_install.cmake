# Install script for directory: C:/Users/joedo/zephyrproject/zephyr

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Zephyr-Kernel")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/Users/joedo/zephyr-sdk-0.16.3/arm-zephyr-eabi/bin/arm-zephyr-eabi-objdump.exe")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/zephyr/arch/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/zephyr/lib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/zephyr/soc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/zephyr/boards/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/zephyr/subsys/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/zephyr/drivers/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/acpica/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/cmsis/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/cmsis-dsp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/cmsis-nn/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/fatfs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/altera/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/hal_ambiq/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/atmel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/hal_espressif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/hal_ethos_u/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/hal_gigadevice/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/hal_infineon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/hal_intel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/microchip/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/hal_nordic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/nuvoton/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/hal_nxp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/openisa/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/quicklogic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/hal_renesas/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/hal_rpi_pico/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/silabs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/st/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/stm32/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/hal_telink/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/ti/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/hal_wurthelektronik/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/xtensa/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/hostap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/libmetal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/liblc3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/littlefs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/loramac-node/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/lvgl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/mbedtls/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/mcuboot/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/mipi-sys-t/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/nrf_hw_models/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/open-amp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/openthread/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/percepio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/picolibc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/segger/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/tinycrypt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/trusted-firmware-m/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/trusted-firmware-a/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/uoscore-uedhoc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/modules/zcbor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/zephyr/kernel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/zephyr/cmake/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/zephyr/cmake/usage/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/tracing/sample.tracing.user/zephyr/cmake/reports/cmake_install.cmake")
endif()


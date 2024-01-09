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
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/zephyr/arch/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/zephyr/lib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/zephyr/soc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/zephyr/boards/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/zephyr/subsys/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/zephyr/drivers/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/acpica/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/cmsis/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/cmsis-dsp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/cmsis-nn/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/fatfs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/altera/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/hal_ambiq/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/atmel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/hal_espressif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/hal_ethos_u/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/hal_gigadevice/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/hal_infineon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/hal_intel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/microchip/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/hal_nordic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/nuvoton/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/hal_nxp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/openisa/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/quicklogic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/hal_renesas/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/hal_rpi_pico/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/silabs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/st/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/stm32/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/hal_telink/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/ti/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/hal_wurthelektronik/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/xtensa/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/hostap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/libmetal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/liblc3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/littlefs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/loramac-node/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/lvgl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/mbedtls/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/mcuboot/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/mipi-sys-t/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/nrf_hw_models/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/open-amp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/openthread/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/percepio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/picolibc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/segger/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/tinycrypt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/trusted-firmware-m/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/trusted-firmware-a/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/uoscore-uedhoc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/modules/zcbor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/zephyr/kernel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/zephyr/cmake/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/zephyr/cmake/usage/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/zbus/benchmark/sample.zbus.benchmark_async/zephyr/cmake/reports/cmake_install.cmake")
endif()


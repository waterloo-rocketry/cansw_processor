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
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/zephyr/arch/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/zephyr/lib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/zephyr/soc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/zephyr/boards/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/zephyr/subsys/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/zephyr/drivers/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/acpica/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/cmsis/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/cmsis-dsp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/cmsis-nn/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/fatfs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/altera/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/hal_ambiq/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/atmel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/hal_espressif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/hal_ethos_u/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/hal_gigadevice/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/hal_infineon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/hal_intel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/microchip/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/hal_nordic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/nuvoton/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/hal_nxp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/openisa/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/quicklogic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/hal_renesas/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/hal_rpi_pico/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/silabs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/st/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/stm32/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/hal_telink/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/ti/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/hal_wurthelektronik/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/xtensa/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/hostap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/libmetal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/liblc3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/littlefs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/loramac-node/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/lvgl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/mbedtls/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/mcuboot/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/mipi-sys-t/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/nrf_hw_models/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/open-amp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/openthread/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/percepio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/picolibc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/segger/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/tinycrypt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/trusted-firmware-m/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/trusted-firmware-a/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/uoscore-uedhoc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/modules/zcbor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/zephyr/kernel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/zephyr/cmake/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/zephyr/cmake/usage/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/joedo/zephyrproject/cansw_processor/twister-out/processor/samples/subsys/portability/cmsis_rtos_v2/timer_synchronization/sample.portability.cmsis_rtos_v2.timer_synchronization/zephyr/cmake/reports/cmake_install.cmake")
endif()


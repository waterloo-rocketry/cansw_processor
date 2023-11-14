board_runner_args(jlink "--device=STM32H733VG" "--speed=4000")
board_runner_args(openocd --target-handle=_CHIPNAME.cpu0 --config=${BOARD_DIR}/support/openocd.cfg)

include(${ZEPHYR_BASE}/boards/common/openocd.board.cmake)
include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)
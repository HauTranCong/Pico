# The set of languages for which implicit dependencies are needed:
set(CMAKE_DEPENDS_LANGUAGES
  "ASM"
  "C"
  "CXX"
  )
# The set of files for implicit dependencies of each language:
set(CMAKE_DEPENDS_CHECK_ASM
  "C:/pico/pico-sdk/src/rp2_common/hardware_divider/divider.S" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/hardware_divider/divider.S.obj"
  "C:/pico/pico-sdk/src/rp2_common/hardware_irq/irq_handler_chain.S" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/hardware_irq/irq_handler_chain.S.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_bit_ops/bit_ops_aeabi.S" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_bit_ops/bit_ops_aeabi.S.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_divider/divider.S" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_divider/divider.S.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_double/double_aeabi.S" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_double/double_aeabi.S.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_double/double_v1_rom_shim.S" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_double/double_v1_rom_shim.S.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_float/float_aeabi.S" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_float/float_aeabi.S.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_float/float_v1_rom_shim.S" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_float/float_v1_rom_shim.S.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_int64_ops/pico_int64_ops_aeabi.S" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_int64_ops/pico_int64_ops_aeabi.S.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_mem_ops/mem_ops_aeabi.S" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_mem_ops/mem_ops_aeabi.S.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_standard_link/crt0.S" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_standard_link/crt0.S.obj"
  )
set(CMAKE_ASM_COMPILER_ID "GNU")

# Preprocessor definitions for this target.
set(CMAKE_TARGET_DEFINITIONS_ASM
  "CFG_TUSB_DEBUG=1"
  "CFG_TUSB_MCU=OPT_MCU_RP2040"
  "CFG_TUSB_OS=OPT_OS_PICO"
  "LIB_PICO_BIT_OPS=1"
  "LIB_PICO_BIT_OPS_PICO=1"
  "LIB_PICO_DIVIDER=1"
  "LIB_PICO_DIVIDER_HARDWARE=1"
  "LIB_PICO_DOUBLE=1"
  "LIB_PICO_DOUBLE_PICO=1"
  "LIB_PICO_FIX_RP2040_USB_DEVICE_ENUMERATION=1"
  "LIB_PICO_FLOAT=1"
  "LIB_PICO_FLOAT_PICO=1"
  "LIB_PICO_INT64_OPS=1"
  "LIB_PICO_INT64_OPS_PICO=1"
  "LIB_PICO_MALLOC=1"
  "LIB_PICO_MEM_OPS=1"
  "LIB_PICO_MEM_OPS_PICO=1"
  "LIB_PICO_PLATFORM=1"
  "LIB_PICO_PRINTF=1"
  "LIB_PICO_PRINTF_PICO=1"
  "LIB_PICO_RUNTIME=1"
  "LIB_PICO_STANDARD_LINK=1"
  "LIB_PICO_STDIO=1"
  "LIB_PICO_STDIO_USB=1"
  "LIB_PICO_STDLIB=1"
  "LIB_PICO_SYNC=1"
  "LIB_PICO_SYNC_CORE=1"
  "LIB_PICO_SYNC_CRITICAL_SECTION=1"
  "LIB_PICO_SYNC_MUTEX=1"
  "LIB_PICO_SYNC_SEM=1"
  "LIB_PICO_TIME=1"
  "LIB_PICO_UNIQUE_ID=1"
  "LIB_PICO_UTIL=1"
  "PICO_BOARD=\"pico\""
  "PICO_BUILD=1"
  "PICO_CMAKE_BUILD_TYPE=\"Debug\""
  "PICO_COPY_TO_RAM=0"
  "PICO_CXX_ENABLE_EXCEPTIONS=0"
  "PICO_NO_FLASH=0"
  "PICO_NO_HARDWARE=0"
  "PICO_ON_DEVICE=1"
  "PICO_TARGET_NAME=\"step\""
  "PICO_USE_BLOCKED_RAM=0"
  )

# The include file search paths:
set(CMAKE_ASM_TARGET_INCLUDE_PATH
  "C:/pico/pico-sdk/src/common/pico_stdlib/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_gpio/include"
  "C:/pico/pico-sdk/src/common/pico_base/include"
  "generated/pico_base"
  "C:/pico/pico-sdk/src/boards/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_platform/include"
  "C:/pico/pico-sdk/src/rp2040/hardware_regs/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_base/include"
  "C:/pico/pico-sdk/src/rp2040/hardware_structs/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_claim/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_sync/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_uart/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_divider/include"
  "C:/pico/pico-sdk/src/common/pico_time/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_timer/include"
  "C:/pico/pico-sdk/src/common/pico_sync/include"
  "C:/pico/pico-sdk/src/common/pico_util/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_runtime/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_clocks/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_irq/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_resets/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_pll/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_vreg/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_watchdog/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_xosc/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_printf/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_bootrom/include"
  "C:/pico/pico-sdk/src/common/pico_bit_ops/include"
  "C:/pico/pico-sdk/src/common/pico_divider/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_double/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_int64_ops/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_float/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_malloc/include"
  "C:/pico/pico-sdk/src/rp2_common/boot_stage2/include"
  "C:/pico/pico-sdk/src/common/pico_binary_info/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_stdio/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_stdio_usb/include"
  "C:/pico/pico-sdk/lib/tinyusb/src"
  "C:/pico/pico-sdk/lib/tinyusb/src/common"
  "C:/pico/pico-sdk/lib/tinyusb/hw"
  "C:/pico/pico-sdk/src/rp2_common/pico_fix/rp2040_usb_device_enumeration/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_unique_id/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_flash/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_pwm/include"
  )
set(CMAKE_DEPENDS_CHECK_C
  "C:/pico/pico-sdk/lib/tinyusb/src/class/audio/audio_device.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/lib/tinyusb/src/class/audio/audio_device.c.obj"
  "C:/pico/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.c.obj"
  "C:/pico/pico-sdk/lib/tinyusb/src/class/dfu/dfu_device.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/lib/tinyusb/src/class/dfu/dfu_device.c.obj"
  "C:/pico/pico-sdk/lib/tinyusb/src/class/dfu/dfu_rt_device.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/lib/tinyusb/src/class/dfu/dfu_rt_device.c.obj"
  "C:/pico/pico-sdk/lib/tinyusb/src/class/hid/hid_device.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/lib/tinyusb/src/class/hid/hid_device.c.obj"
  "C:/pico/pico-sdk/lib/tinyusb/src/class/midi/midi_device.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/lib/tinyusb/src/class/midi/midi_device.c.obj"
  "C:/pico/pico-sdk/lib/tinyusb/src/class/msc/msc_device.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/lib/tinyusb/src/class/msc/msc_device.c.obj"
  "C:/pico/pico-sdk/lib/tinyusb/src/class/net/net_device.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/lib/tinyusb/src/class/net/net_device.c.obj"
  "C:/pico/pico-sdk/lib/tinyusb/src/class/usbtmc/usbtmc_device.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/lib/tinyusb/src/class/usbtmc/usbtmc_device.c.obj"
  "C:/pico/pico-sdk/lib/tinyusb/src/class/vendor/vendor_device.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/lib/tinyusb/src/class/vendor/vendor_device.c.obj"
  "C:/pico/pico-sdk/lib/tinyusb/src/common/tusb_fifo.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/lib/tinyusb/src/common/tusb_fifo.c.obj"
  "C:/pico/pico-sdk/lib/tinyusb/src/device/usbd.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/lib/tinyusb/src/device/usbd.c.obj"
  "C:/pico/pico-sdk/lib/tinyusb/src/device/usbd_control.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/lib/tinyusb/src/device/usbd_control.c.obj"
  "C:/pico/pico-sdk/lib/tinyusb/src/portable/raspberrypi/rp2040/dcd_rp2040.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/lib/tinyusb/src/portable/raspberrypi/rp2040/dcd_rp2040.c.obj"
  "C:/pico/pico-sdk/lib/tinyusb/src/portable/raspberrypi/rp2040/rp2040_usb.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/lib/tinyusb/src/portable/raspberrypi/rp2040/rp2040_usb.c.obj"
  "C:/pico/pico-sdk/lib/tinyusb/src/tusb.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/lib/tinyusb/src/tusb.c.obj"
  "C:/pico/pico-sdk/src/common/pico_sync/critical_section.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/common/pico_sync/critical_section.c.obj"
  "C:/pico/pico-sdk/src/common/pico_sync/lock_core.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/common/pico_sync/lock_core.c.obj"
  "C:/pico/pico-sdk/src/common/pico_sync/mutex.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/common/pico_sync/mutex.c.obj"
  "C:/pico/pico-sdk/src/common/pico_sync/sem.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/common/pico_sync/sem.c.obj"
  "C:/pico/pico-sdk/src/common/pico_time/time.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/common/pico_time/time.c.obj"
  "C:/pico/pico-sdk/src/common/pico_time/timeout_helper.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/common/pico_time/timeout_helper.c.obj"
  "C:/pico/pico-sdk/src/common/pico_util/datetime.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/common/pico_util/datetime.c.obj"
  "C:/pico/pico-sdk/src/common/pico_util/pheap.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/common/pico_util/pheap.c.obj"
  "C:/pico/pico-sdk/src/common/pico_util/queue.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/common/pico_util/queue.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/hardware_claim/claim.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/hardware_claim/claim.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/hardware_clocks/clocks.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/hardware_flash/flash.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/hardware_flash/flash.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/hardware_gpio/gpio.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/hardware_gpio/gpio.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/hardware_irq/irq.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/hardware_irq/irq.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/hardware_pll/pll.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/hardware_pll/pll.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/hardware_sync/sync.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/hardware_sync/sync.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/hardware_timer/timer.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/hardware_timer/timer.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/hardware_uart/uart.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/hardware_uart/uart.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/hardware_vreg/vreg.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/hardware_vreg/vreg.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/hardware_watchdog/watchdog.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/hardware_watchdog/watchdog.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/hardware_xosc/xosc.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/hardware_xosc/xosc.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_bootrom/bootrom.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_bootrom/bootrom.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_double/double_init_rom.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_double/double_init_rom.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_double/double_math.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_double/double_math.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_fix/rp2040_usb_device_enumeration/rp2040_usb_device_enumeration.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_fix/rp2040_usb_device_enumeration/rp2040_usb_device_enumeration.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_float/float_init_rom.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_float/float_init_rom.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_float/float_math.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_float/float_math.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_malloc/pico_malloc.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_malloc/pico_malloc.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_platform/platform.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_platform/platform.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_printf/printf.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_printf/printf.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_runtime/runtime.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_runtime/runtime.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_stdio/stdio.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_stdio/stdio.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_stdio_usb/reset_interface.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_stdio_usb/reset_interface.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_stdio_usb/stdio_usb.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_stdio_usb/stdio_usb.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_stdio_usb/stdio_usb_descriptors.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_stdio_usb/stdio_usb_descriptors.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_stdlib/stdlib.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_stdlib/stdlib.c.obj"
  "C:/pico/pico-sdk/src/rp2_common/pico_unique_id/unique_id.c" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_unique_id/unique_id.c.obj"
  )
set(CMAKE_C_COMPILER_ID "GNU")

# Preprocessor definitions for this target.
set(CMAKE_TARGET_DEFINITIONS_C
  "CFG_TUSB_DEBUG=1"
  "CFG_TUSB_MCU=OPT_MCU_RP2040"
  "CFG_TUSB_OS=OPT_OS_PICO"
  "LIB_PICO_BIT_OPS=1"
  "LIB_PICO_BIT_OPS_PICO=1"
  "LIB_PICO_DIVIDER=1"
  "LIB_PICO_DIVIDER_HARDWARE=1"
  "LIB_PICO_DOUBLE=1"
  "LIB_PICO_DOUBLE_PICO=1"
  "LIB_PICO_FIX_RP2040_USB_DEVICE_ENUMERATION=1"
  "LIB_PICO_FLOAT=1"
  "LIB_PICO_FLOAT_PICO=1"
  "LIB_PICO_INT64_OPS=1"
  "LIB_PICO_INT64_OPS_PICO=1"
  "LIB_PICO_MALLOC=1"
  "LIB_PICO_MEM_OPS=1"
  "LIB_PICO_MEM_OPS_PICO=1"
  "LIB_PICO_PLATFORM=1"
  "LIB_PICO_PRINTF=1"
  "LIB_PICO_PRINTF_PICO=1"
  "LIB_PICO_RUNTIME=1"
  "LIB_PICO_STANDARD_LINK=1"
  "LIB_PICO_STDIO=1"
  "LIB_PICO_STDIO_USB=1"
  "LIB_PICO_STDLIB=1"
  "LIB_PICO_SYNC=1"
  "LIB_PICO_SYNC_CORE=1"
  "LIB_PICO_SYNC_CRITICAL_SECTION=1"
  "LIB_PICO_SYNC_MUTEX=1"
  "LIB_PICO_SYNC_SEM=1"
  "LIB_PICO_TIME=1"
  "LIB_PICO_UNIQUE_ID=1"
  "LIB_PICO_UTIL=1"
  "PICO_BOARD=\"pico\""
  "PICO_BUILD=1"
  "PICO_CMAKE_BUILD_TYPE=\"Debug\""
  "PICO_COPY_TO_RAM=0"
  "PICO_CXX_ENABLE_EXCEPTIONS=0"
  "PICO_NO_FLASH=0"
  "PICO_NO_HARDWARE=0"
  "PICO_ON_DEVICE=1"
  "PICO_TARGET_NAME=\"step\""
  "PICO_USE_BLOCKED_RAM=0"
  )

# The include file search paths:
set(CMAKE_C_TARGET_INCLUDE_PATH
  "C:/pico/pico-sdk/src/common/pico_stdlib/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_gpio/include"
  "C:/pico/pico-sdk/src/common/pico_base/include"
  "generated/pico_base"
  "C:/pico/pico-sdk/src/boards/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_platform/include"
  "C:/pico/pico-sdk/src/rp2040/hardware_regs/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_base/include"
  "C:/pico/pico-sdk/src/rp2040/hardware_structs/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_claim/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_sync/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_uart/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_divider/include"
  "C:/pico/pico-sdk/src/common/pico_time/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_timer/include"
  "C:/pico/pico-sdk/src/common/pico_sync/include"
  "C:/pico/pico-sdk/src/common/pico_util/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_runtime/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_clocks/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_irq/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_resets/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_pll/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_vreg/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_watchdog/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_xosc/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_printf/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_bootrom/include"
  "C:/pico/pico-sdk/src/common/pico_bit_ops/include"
  "C:/pico/pico-sdk/src/common/pico_divider/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_double/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_int64_ops/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_float/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_malloc/include"
  "C:/pico/pico-sdk/src/rp2_common/boot_stage2/include"
  "C:/pico/pico-sdk/src/common/pico_binary_info/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_stdio/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_stdio_usb/include"
  "C:/pico/pico-sdk/lib/tinyusb/src"
  "C:/pico/pico-sdk/lib/tinyusb/src/common"
  "C:/pico/pico-sdk/lib/tinyusb/hw"
  "C:/pico/pico-sdk/src/rp2_common/pico_fix/rp2040_usb_device_enumeration/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_unique_id/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_flash/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_pwm/include"
  )
set(CMAKE_DEPENDS_CHECK_CXX
  "C:/pico/pico-sdk/src/rp2_common/pico_standard_link/new_delete.cpp" "C:/pico/step/build/CMakeFiles/step.dir/C_/pico/pico-sdk/src/rp2_common/pico_standard_link/new_delete.cpp.obj"
  "C:/pico/step/includes/pwm.cpp" "C:/pico/step/build/CMakeFiles/step.dir/includes/pwm.cpp.obj"
  "C:/pico/step/main.cpp" "C:/pico/step/build/CMakeFiles/step.dir/main.cpp.obj"
  )
set(CMAKE_CXX_COMPILER_ID "GNU")

# Preprocessor definitions for this target.
set(CMAKE_TARGET_DEFINITIONS_CXX
  "CFG_TUSB_DEBUG=1"
  "CFG_TUSB_MCU=OPT_MCU_RP2040"
  "CFG_TUSB_OS=OPT_OS_PICO"
  "LIB_PICO_BIT_OPS=1"
  "LIB_PICO_BIT_OPS_PICO=1"
  "LIB_PICO_DIVIDER=1"
  "LIB_PICO_DIVIDER_HARDWARE=1"
  "LIB_PICO_DOUBLE=1"
  "LIB_PICO_DOUBLE_PICO=1"
  "LIB_PICO_FIX_RP2040_USB_DEVICE_ENUMERATION=1"
  "LIB_PICO_FLOAT=1"
  "LIB_PICO_FLOAT_PICO=1"
  "LIB_PICO_INT64_OPS=1"
  "LIB_PICO_INT64_OPS_PICO=1"
  "LIB_PICO_MALLOC=1"
  "LIB_PICO_MEM_OPS=1"
  "LIB_PICO_MEM_OPS_PICO=1"
  "LIB_PICO_PLATFORM=1"
  "LIB_PICO_PRINTF=1"
  "LIB_PICO_PRINTF_PICO=1"
  "LIB_PICO_RUNTIME=1"
  "LIB_PICO_STANDARD_LINK=1"
  "LIB_PICO_STDIO=1"
  "LIB_PICO_STDIO_USB=1"
  "LIB_PICO_STDLIB=1"
  "LIB_PICO_SYNC=1"
  "LIB_PICO_SYNC_CORE=1"
  "LIB_PICO_SYNC_CRITICAL_SECTION=1"
  "LIB_PICO_SYNC_MUTEX=1"
  "LIB_PICO_SYNC_SEM=1"
  "LIB_PICO_TIME=1"
  "LIB_PICO_UNIQUE_ID=1"
  "LIB_PICO_UTIL=1"
  "PICO_BOARD=\"pico\""
  "PICO_BUILD=1"
  "PICO_CMAKE_BUILD_TYPE=\"Debug\""
  "PICO_COPY_TO_RAM=0"
  "PICO_CXX_ENABLE_EXCEPTIONS=0"
  "PICO_NO_FLASH=0"
  "PICO_NO_HARDWARE=0"
  "PICO_ON_DEVICE=1"
  "PICO_TARGET_NAME=\"step\""
  "PICO_USE_BLOCKED_RAM=0"
  )

# The include file search paths:
set(CMAKE_CXX_TARGET_INCLUDE_PATH
  "C:/pico/pico-sdk/src/common/pico_stdlib/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_gpio/include"
  "C:/pico/pico-sdk/src/common/pico_base/include"
  "generated/pico_base"
  "C:/pico/pico-sdk/src/boards/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_platform/include"
  "C:/pico/pico-sdk/src/rp2040/hardware_regs/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_base/include"
  "C:/pico/pico-sdk/src/rp2040/hardware_structs/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_claim/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_sync/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_uart/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_divider/include"
  "C:/pico/pico-sdk/src/common/pico_time/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_timer/include"
  "C:/pico/pico-sdk/src/common/pico_sync/include"
  "C:/pico/pico-sdk/src/common/pico_util/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_runtime/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_clocks/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_irq/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_resets/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_pll/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_vreg/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_watchdog/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_xosc/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_printf/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_bootrom/include"
  "C:/pico/pico-sdk/src/common/pico_bit_ops/include"
  "C:/pico/pico-sdk/src/common/pico_divider/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_double/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_int64_ops/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_float/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_malloc/include"
  "C:/pico/pico-sdk/src/rp2_common/boot_stage2/include"
  "C:/pico/pico-sdk/src/common/pico_binary_info/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_stdio/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_stdio_usb/include"
  "C:/pico/pico-sdk/lib/tinyusb/src"
  "C:/pico/pico-sdk/lib/tinyusb/src/common"
  "C:/pico/pico-sdk/lib/tinyusb/hw"
  "C:/pico/pico-sdk/src/rp2_common/pico_fix/rp2040_usb_device_enumeration/include"
  "C:/pico/pico-sdk/src/rp2_common/pico_unique_id/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_flash/include"
  "C:/pico/pico-sdk/src/rp2_common/hardware_pwm/include"
  )

# Targets to which this target links.
set(CMAKE_TARGET_LINKED_INFO_FILES
  )

# Fortran module output directory.
set(CMAKE_Fortran_TARGET_MODULE_DIR "")

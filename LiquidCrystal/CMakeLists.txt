cmake_minimum_required(VERSION 3.12)

include(pico_sdk_import.cmake)

project(liquidcrystal C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

pico_sdk_init()

add_executable(${PROJECT_NAME}
    main.cpp
    includes/lcd1602.cpp
)

target_link_libraries(${PROJECT_NAME}
    pico_stdlib
    hardware_gpio
    hardware_adc
)

pico_enable_stdio_usb(${PROJECT_NAME} 1)
pico_enable_stdio_uart(${PROJECT_NAME} 0)

pico_add_extra_outputs(${PROJECT_NAME})
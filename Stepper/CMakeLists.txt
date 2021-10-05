cmake_minimum_required(VERSION 3.12)

include(pico_sdk_import.cmake)

project(step C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

pico_sdk_init()

add_executable(${PROJECT_NAME}
        main.cpp
        includes/pwm.cpp
)

target_link_libraries(${PROJECT_NAME}
        pico_stdlib
        hardware_pwm
)

pico_enable_stdio_usb(${PROJECT_NAME} 1)
pico_enable_stdio_uart(${PROJECT_NAME} 0)

pico_add_extra_outputs(${PROJECT_NAME})
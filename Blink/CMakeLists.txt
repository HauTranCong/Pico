#Yêu cầu phiên bản thấp nhất của cmake là 3.12
cmake_minimum_required(VERSION 3.12)

#Thêm các hàm xây dựng chương trình từ pico-sdk
include(pico_sdk_import.cmake)

#Tên project và ngôn ngữ được sử dụng là C/C++ và Asm
project(blink C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

#Thư viện khởi tạo cho project từ pico-sdk
pico_sdk_init()

#file thực thi, có đuôi là c cpp
add_executable(${PROJECT_NAME} 
    main.c
)

#Kết nối thư viện tiêu chuẩn (gpio, time, ....các hàm chức năng cơ bản)
target_link_libraries(${PROJECT_NAME}  
    pico_stdlib
)

#Bật usb serial bằng cách pass giá trị 1
pico_enable_stdio_usb(${PROJECT_NAME} 1)
#Tắt uart vì sẻ ảnh hưởng đến usb mode bằng cách pass giá trị 0
pico_enable_stdio_uart(${PROJECT_NAME} 0)

#Xuất file map/hex/bin/uf2 
pico_add_extra_outputs(${PROJECT_NAME})

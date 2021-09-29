#include <stdio.h> //Thư viện chuẩn io của C
#include "pico/stdlib.h"

int main() {

    const uint led_pin = 25;

    // Initialize LED pin
    gpio_init(led_pin);
    gpio_set_dir(led_pin, GPIO_OUT);

    // Initialize chosen serial port 
    //Khởi tạo port đã chọn bên cmakelists
    stdio_init_all();

    // Loop forever
    while (true) {
        // Blink LED
        gpio_put(led_pin, true);
        printf("LED ON!\n");
        sleep_ms(1000); //Sleep 1 giây
        gpio_put(led_pin, false);
        printf("LED OFF!\n");
        sleep_ms(1000);
    }
}

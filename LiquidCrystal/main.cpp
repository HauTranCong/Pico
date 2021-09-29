#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/adc.h"
#include "includes/lcd1602.h"

#define USER_LED 25
char buffer[16];

LiquidCrystal lcd(16, 17, 18, 19, 20, 21);

uint8_t peaceMid[8] = {
    0b01110,
    0b10101,
    0b00100,
    0b00100,
    0b00100,
    0b01010,
    0b10001,
    0b01110
};
uint8_t peaceLeft[8] = {
    0b00000,
    0b00000,
    0b10000,
    0b10000,
    0b10000,
    0b10000,
    0b00000,
    0b00000
};
uint8_t peaceRight[8] = {
    0b00000,
    0b00000,
    0b00001,
    0b00001,
    0b00001,
    0b00001,
    0b00000,
    0b00000
};

int main() {
    stdio_init_all();
    lcd.init();
    adc_init();
    adc_set_temp_sensor_enabled(true);
    adc_select_input(4);
    
    lcd.SetCursor(0, 0);
    lcd.print("<Raspberry Pico>");
    lcd.CreateChar(0, peaceRight);
    lcd.CreateChar(1, peaceMid);
    lcd.CreateChar(2, peaceLeft);

    sleep_ms(2000);
    // lcd.clear();

    while (1)
    {
        uint16_t raw = adc_read();
        const float conversion_factor = 3.3f / (1<<12);
        float result = raw * conversion_factor;
        float temp = 27 - (result -0.706)/0.001721;
        lcd.SetCursor(1, 0);
        //Ký tự độ có mã hex là 0xDF ta đặt nó ngay sau nhiệt độ định dạng là %c
        sprintf(buffer, "Temp: %.2f%cC", temp, 0xDF);
        lcd.print(buffer);
        lcd.WriteChar(0);
        lcd.WriteChar(1);
        lcd.WriteChar(2);
        sleep_ms(500);
    }
}
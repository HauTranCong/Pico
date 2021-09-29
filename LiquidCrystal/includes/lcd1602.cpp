#include "lcd1602.h"
#include "pico/stdlib.h"

LiquidCrystal::LiquidCrystal(uint RS_PIN, uint EN_PIN, uint D4_PIN, uint D5_PIN, uint D6_PIN, uint D7_PIN) {
    this->LCD_PINS[0] = RS_PIN;
    this->LCD_PINS[1] = EN_PIN;
    this->LCD_PINS[2] = D4_PIN;
    this->LCD_PINS[3] = D5_PIN;
    this->LCD_PINS[4] = D6_PIN;
    this->LCD_PINS[5] = D7_PIN; 
    for (int i = 0; i < sizeof(LCD_PINS)/sizeof(LCD_PINS[0]); i++) {
        gpio_init(LCD_PINS[i]);
        gpio_set_dir(LCD_PINS[i], true);
        gpio_put(LCD_PINS[i], false);
    }
}

void LiquidCrystal::Command(unsigned char cmd) {
    gpio_put_masked(0b1 << LCD_PINS[0], 0); //RS = 0
    Data(cmd);
    gpio_put_masked(0b1 << LCD_PINS[1], 1 << LCD_PINS[1]); //EN = 1
    sleep_ms(2);
    gpio_put_masked(0b1 << LCD_PINS[1], 0); //EN = 0
}

void LiquidCrystal::Data(unsigned char data) {
    (data & 1) ? gpio_put_masked(0b1 << LCD_PINS[2], 1 << LCD_PINS[2]) : gpio_put_masked(0b1 << LCD_PINS[2], 0);
    (data & 2) ? gpio_put_masked(0b1 << LCD_PINS[3], 1 << LCD_PINS[3]) : gpio_put_masked(0b1 << LCD_PINS[3], 0);
    (data & 4) ? gpio_put_masked(0b1 << LCD_PINS[4], 1 << LCD_PINS[4]) : gpio_put_masked(0b1 << LCD_PINS[4], 0);
    (data & 8) ? gpio_put_masked(0b1 << LCD_PINS[5], 1 << LCD_PINS[5]) : gpio_put_masked(0b1 << LCD_PINS[5], 0);
}

void LiquidCrystal::init() {
    // gpio_init_mask(0b111111 << LCD_PINS[2]);
    // gpio_set_dir_out_masked(0b111111 << LCD_PINS[2]);
    // gpio_clr_mask(0b111111 << LCD_PINS[2]);
    //Step 1 more than 40us after Vcc rises to 2.7V
    sleep_ms(50);
    //Step 2 Funcion set 4-bit operation
    Command(0x03);
    sleep_ms(5);
    //Step 3 Funcion set, selects 2-line display and 5 x 8 dot char
    Command(0x03);
    sleep_us(120);
    Command(0x03);
    Command(0x02);
    Command(0x02);
    Command(0x08);
    //Step 4 display on/off control
    Command(0x00);
    Command(0x0C);
    //Step 5 Entry mode set
    Command(0x00);
    Command(0x06);
    clear(); 
}

void LiquidCrystal::WriteChar(uint8_t data) {
    //Most significant bit, Least significant bit
    uint8_t MSB, LSB;
    LSB = data & 0x0F;
    MSB = data & 0xF0;
    gpio_put_masked(0b1 << LCD_PINS[0], 1 << LCD_PINS[0]); //RS = 1
    Data(MSB >> 4);
    gpio_put_masked(0b1 << LCD_PINS[1], 1 << LCD_PINS[1]); //EN = 1
    sleep_ms(2);
    gpio_put_masked(0b1 << LCD_PINS[1], 0); //EN = 0
    sleep_ms(2);
    Data(LSB);
    gpio_put_masked(0b1 << LCD_PINS[1], 1 << LCD_PINS[1]); //EN = 1
    sleep_ms(2);
    gpio_put_masked(0b1 << LCD_PINS[1], 0); //EN = 0    
}

void LiquidCrystal::print(const char *str) {
    for (int i = 0; str[i] != '\0'; i++)
        WriteChar(str[i]);
}

void LiquidCrystal::SetCursor(uint8_t row, uint8_t colums) {
    if(!row) { //row 0 is line 1
        //0x80 + colums - 1; //0b1000 AAAA (set cursor in line 1, AAAA correct to cursor address (position))
        Command(0x8); //MSB
        Command(0xF + colums + 1);   //LSB
    }
    if(row) {  //row 1 is line 2
        //0xC0 + colums - 1; //0b1100 AAAA (set cursor in line 2, AAAA correct to cursor address (position))
        Command(0xC); //MSB
        Command(0xF + colums + 1);   //LSB
    }
}

void LiquidCrystal::clear() {
    //Clear display (also clear DDRAM content) 0x01
    Command(0x0);   //MSB 0000
    Command(0x1);   //LSB 0001
}

void LiquidCrystal::ShiftEntireLeft() {
    //Shift entire display left 0x18
    Command(0x1);   //MSB 0001
    Command(0x8);   //LSB 1000 
}

void LiquidCrystal::ShiftEntireRight() {
    //Shift entire display right 0x1C
    Command(0x1);   //MSB 0001
    Command(0xC);   //LSB 1100
}

void LiquidCrystal::CursorOn() {
    //Display on/off control 0000 1DCB
    Command(0x0);   //MSB 0000
    Command(0xF);   //LSB 1111
}

void LiquidCrystal::CursorOff() {
    //Display on/off control 0000 1DCB
    Command(0x0);   //MSB 0000
    Command(0xC);   //LSB 1100
}

void LiquidCrystal::CreateChar(uint8_t location, const uint8_t* charMap) {
    location &= 0x07;
    uint8_t Tmp, MSB, LSB;
    Tmp = 0x40 | (location << 3);
    MSB =  Tmp & 0XF0;
    LSB =  Tmp & 0X0F;
    Command(MSB >> 4);
    Command(LSB);
    for(int i = 0; i < 8; i++) {
        WriteChar(charMap[i]);
    }
}
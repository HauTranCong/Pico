#ifndef LCD1602_H
#define LCD1602_H

#include "pico/stdlib.h"

class LiquidCrystal 
{
private:
    uint LCD_PINS[6];  //4-Bit mode
    void Command(uint8_t);  // Send 4-Bit Command To LCD
    void Data(uint8_t);     // Send 4-Bit Data To LCD
public:
    LiquidCrystal(uint, uint, uint, uint, uint, uint); //4-bit Mode
    void init();    // Initialize The LCD For 4-Bit Interface
    void clear();   // Clear The LCD Display
    void print(const char*);    // Write A String To LCD
    void SetCursor(uint8_t, uint8_t);   // Set Cursor Position
    void CursorOff();   //Turn off cursor at current position
    void CursorOn();    //Turn on cursor at current position
    void ShiftEntireLeft();    // Shift The Entire Display To The Left
    void ShiftEntireRight();    // Shift The Entire Display To The Right
    void CreateChar(uint8_t,const uint8_t*);    //Create special char
    void WriteChar(uint8_t);    // Write Character To LCD At Current Position
};

#endif
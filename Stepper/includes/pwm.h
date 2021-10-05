#ifndef PWM_H
#define PWM_H

#include "pico/stdlib.h"
#include "hardware/pwm.h"

class PWM {
private:
    uint16_t PRESCALER; //Clkdiv
    uint16_t STEP;  //Counter Compare level
    uint PIN_NUMBER; //which number are you using
    uint slice_num; //Determine the PWM slice that is attached to the specified GPIO
    pwm_config config; //Config pwm register
public:
    PWM(uint, uint16_t, uint16_t);
    void init();
    void start();
    void stop();
    void write(uint);
};

#endif

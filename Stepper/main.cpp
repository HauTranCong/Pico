#include <stdio.h>
#include "pico/stdio.h"
#include "pico/stdlib.h"
#include "hardware/pwm.h"
#include "includes/pwm.h"
/*
    VM <-> 5V
    VCC <-> 3.3V
    PWMA <-> GP15
    INA2 <-> GP14
    INA1 <-> GP13
    INB1 <-> GP12
    INB2 <-> GP11
    PWMB <-> GP10 
*/
#define STANDBY 0
uint DIR_PIN[] = {14, 13, 12, 11};
PWM PWMA(15, 250, 500); //sys_clk / 250 * 500 = 1000Hz 
PWM PWMB(10, 250, 500); //sys_clk / 250 * 500 = 1000Hz 

void step(int, bool, uint);
void stepDrive(uint);

int main() {
    PWMA.init();  
    PWMB.init();

    for (int i = 0; i < sizeof(DIR_PIN)/sizeof(DIR_PIN[0]); i++)
    {
        gpio_init(DIR_PIN[i]);
        gpio_set_dir(DIR_PIN[i], GPIO_OUT);
        gpio_put(DIR_PIN[i], false);
    }

    gpio_init(STANDBY);
    gpio_set_dir(STANDBY, GPIO_OUT);
    gpio_put(STANDBY, true);

    //Stepper motor specific 3.9V / 600mA
    PWMA.write(386); // (386 / X) - 500/5 => X = 3.86V 
    PWMB.write(386); // duty cycle: 77,2% => Average voltage = 3.86V

    stdio_init_all();
    while (1) {
        //step(number_of_step, direction, ms per step)
        step(200, true, 5); //CW
        sleep_ms(1000);
        step(200, false, 10); //CCW
        sleep_ms(1000);
    }
}

void step(int steps_to_move, bool direction, uint speed) {
    int steps = 0;
    if(direction)
        steps = steps_to_move;
    while(direction) {
        steps--;
        sleep_ms(speed);
        stepDrive(steps % 4);
        if(steps == 0)
            break;
    }
    while(!direction) {
        steps++;
        sleep_ms(speed);
        stepDrive(steps % 4);
        if(steps == steps_to_move)
            break;
    }
}
void stepDrive(uint thisStep) {
    switch (thisStep) {
    case 0:  // 1010
        gpio_put(DIR_PIN[0], true); //INA2
        gpio_put(DIR_PIN[1], false); //INA1
        gpio_put(DIR_PIN[2], true); //INB1
        gpio_put(DIR_PIN[3], false); //INB2
        break;
    case 1:  // 0110
        gpio_put(DIR_PIN[0], false); //INA2
        gpio_put(DIR_PIN[1], true); //INA1
        gpio_put(DIR_PIN[2], true); //INB1
        gpio_put(DIR_PIN[3], false); //INB2
        break;
    case 2:  //0101
        gpio_put(DIR_PIN[0], false); //INA2
        gpio_put(DIR_PIN[1], true); //INA1
        gpio_put(DIR_PIN[2], false); //INB1
        gpio_put(DIR_PIN[3], true); //INB2
        break;
    case 3:  //1001
        gpio_put(DIR_PIN[0], true); //INA2
        gpio_put(DIR_PIN[1], false); //INA1
        gpio_put(DIR_PIN[2], false); //INB1
        gpio_put(DIR_PIN[3], true); //INB2
        break;
    }
}
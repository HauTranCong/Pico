#include <stdio.h>
#include "pico/stdio.h"
#include "pico/stdlib.h"
#include "hardware/pwm.h"

#define SERVO_PIN 0

int main() {
    stdio_init_all();
    //Each GPIO can have one function selected at a time
    gpio_set_function(SERVO_PIN, GPIO_FUNC_PWM);
    //Determine the PWM slice that is attached to the specified GPIO
    uint slice_num = pwm_gpio_to_slice_num(SERVO_PIN);
    //Get a set of default values for PWM configuration.
    pwm_config config = pwm_get_default_config();
    //We need change the output PWM with 50Hz
    //sys_clk / 250 / 10000 = 50Hz
    pwm_config_set_clkdiv(&config, 250.f); //250.f
    pwm_config_set_wrap(&config, 10000.f); //10000.f 
    //Initialise a PWM with settings from a configuration object above
    pwm_init(slice_num, &config, true);
    
    bool direction = false;
    int counterCompareLevel = 200;

    while (1) {
        counterCompareLevel += direction ? 5 : -5;
        if(counterCompareLevel >= 1200) direction = false;
        if(counterCompareLevel <= 200) direction = true;
        //duty cycle change from 2% to 12% equivalent to 0 degree to 180 degree
        pwm_set_gpio_level(SERVO_PIN, counterCompareLevel);
        sleep_ms(10);
    }
}


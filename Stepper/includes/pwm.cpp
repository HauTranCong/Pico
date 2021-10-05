#include "pwm.h"
//PWM config
PWM::PWM(uint pin, uint16_t prescaler, uint16_t step) {
    this->PIN_NUMBER = pin;
    this->PRESCALER = prescaler;
    this->STEP = step;
}

void PWM::init() {
    //Each GPIO can have one function selected at a time
    gpio_set_function(PIN_NUMBER, GPIO_FUNC_PWM);
    //Determine the PWM slice that is attached to the specified GPIO
    slice_num = pwm_gpio_to_slice_num(PIN_NUMBER);
    //Get a set of default values for PWM configuration.
    config = pwm_get_default_config();
    //We need change the output PWM with 50Hz
    //sys_clk / prescaler / step = 50Hz
    pwm_config_set_clkdiv(&config, PRESCALER); //250.f
    pwm_config_set_wrap(&config, STEP); //10000.f 
    //Initialise a PWM with settings from a configuration object above
    pwm_init(slice_num, &config, true);
}

void PWM::start() {
    pwm_init(slice_num, &config, true);
}

void PWM::stop() {
    pwm_init(slice_num, &config, false);
}

void PWM::write(uint counterCompareLevel) {
    pwm_set_gpio_level(PIN_NUMBER, counterCompareLevel);
}

#include <stdio.h>
#include "pico/stdlib.h"
#include "pico/multicore.h"
#include "hardware/irq.h"
#include "hardware/adc.h"
 
// Core 1 interrupt Handler
void core1_interrupt_handler() {

    // Receive Raw Value, Convert and Print Temperature Value
    // check if there is data in FIFO
    while (multicore_fifo_rvalid()){
        // pop the data from FIFO stack
        uint16_t raw = multicore_fifo_pop_blocking();
        //ADC value = 3.3 / 2 ^ 12 (resolution of adc is 12 bit)
        const float conversion_factor = 3.3f / (1 << 12);
        float result = raw * conversion_factor;
        float temp = 27 - (result - 0.706)/0.001721;
        printf("Temp = %f C\n", temp);        
    }
    //at the end of handling the interrupt, we need to clear it
    multicore_fifo_clear_irq(); // Clear interrupt
}

// Core 1 Main Code
void core1_entry() {
    // Configure Core 1 Interrupt
    // this will run only at the beggining of execution. We clear the interrupt flag, if it got set by a chance
    multicore_fifo_clear_irq(); //Clear FIFO interrupt.

    // set the SIO_IRQ_PROC1 (FIFO register set interrupt) ownership to only one core. Opposite to irq_add_shared_handler() function
    // We pass it the name of function that shall be executed when interrupt occurs
    irq_set_exclusive_handler(SIO_IRQ_PROC1, core1_interrupt_handler); 

    //Enable interrupts 
    irq_set_enabled(SIO_IRQ_PROC1, true);

    // Infinte While Loop to wait for interrupt
    while (1){
        tight_loop_contents();
    }
}

// Core 0 Main Code
int main(void){
    // initialize stdio to COM output
    stdio_init_all();

    multicore_launch_core1(core1_entry); //Run code on core 1.

    adc_init(); //Initialise the ADC HW.
    adc_set_temp_sensor_enabled(true); //Enable the onboard temperature sensor.
    //Input 4 is the onboard temperature sensor.
    adc_select_input(4); //Select an ADC input. 0...3 are GPIOs 26...29 respectively. 

    // Primary Core 0 Loop
    while (1) {
        uint16_t raw = adc_read(); //Perform a single conversion.
        multicore_fifo_push_blocking(raw); //Push raw on to the FIFO stack.
        sleep_ms(1000); //Sleep 1s also data send every a second
    }
}
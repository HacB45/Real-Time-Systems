/* Standard includes. */
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>

#include <sys/attribs.h>

void pwm() {    
    
    // Set timer
    T2CONbits.ON = 0; // Stop timer
    IFS0bits.T2IF=0; // Reset interrupt flag    
    T2CONbits.TCKPS = 1; //Select pre-scaler
    T2CONbits.T32 = 0; // 16 bit timer operation
    PR2=pr; // Compute PR value
    TMR2=0;
    
    // Set OC1
    OC1CONbits.OCM = 6; // OCM = 0b110 : OC1 in PWM mode,
    OC1CONbits.OCTSEL=0; // Timer 2 is clock source of OCM
    OC1RS=0; // Compute OC1xRS value
    OC1CONbits.ON=1;     // Enable OC1

}

/* Standard includes */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <xc.h>
#include <sys/attribs.h>


/* Kernel includes */
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

/* App includes */
#include "../UART/uart.h"

/* The rate at which the acknowledge task is executed */
#define PBCLOCK 40000000L
#define PROC_PERIOD_MS (500/portTICK_RATE_MS)
#define ADC_PERIOD_MS (100/portTICK_RATE_MS)

/* Priorities of the demo application tasks (high numb. -> high prio.) */
#define ACQ_PRIORITY	( tskIDLE_PRIORITY + 3 )
#define PROC_PRIORITY	( tskIDLE_PRIORITY + 2 )
#define OUT_PRIORITY    ( tskIDLE_PRIORITY + 1 )

uint32_t volatile temp;
uint32_t volatile medtemp;

SemaphoreHandle_t xSem1 = NULL;
SemaphoreHandle_t xSem2 = NULL;

/*
 * Prototypes and tasks
 */

/* 
Task Acq is executed every 100ms and should acquire a sample of ADC
Channel 0
 */

void pvAcq(void *pvParam)
{
 
    // Welcome message task Acq
    //printf("Task Acq\n\r");
    
    TickType_t xLastWakeTime;
    
    // Initialise the xLastWakeTime variable with the current time
    xLastWakeTime = xTaskGetTickCount();
    
    for(;;) {
     
        AD1CON1bits.ASAM = 1; // Start conversion
        IFS1bits.AD1IF = 0; // Reset interrupt flag

        while (IFS1bits.AD1IF == 0); // Wait fo EOC
        
        // Convert 0..3.3V to 0..100 
       
        temp = (ADC1BUF0 *100) / 1023;
        
        //printf("Voltage: %d  \n\r", volt);
        
        xSemaphoreGive(xSem1);
        
        vTaskDelayUntil( &xLastWakeTime, ADC_PERIOD_MS);
    }
     
}

/* 
Task Proc takes as input the output of task Acq and outputs the average
of the last five samples received
 */

void pvProc(void *pvParam)
{
    
    // Welcome message task Proc
    //printf("Task Proc\n\r");
    
    uint32_t sum = 0;
    uint32_t i = 0;
    
    for(;;)
    {
        if(xSem1 != NULL){
            
            if(xSemaphoreTake(xSem1, ADC_PERIOD_MS) == pdTRUE){
                i++;
                if(i <= 5){

                    sum = sum + temp;

                }
                else{
                    medtemp = sum;
                    i = 0;
                    sum = 0;
                    
                    xSemaphoreGive(xSem2);
                    
                    //printf("%d  \n\r", temp);
                }
            }
        }
        vTaskDelay(PROC_PERIOD_MS);
    }
}

/* 
Task Out takes as input the output of task Proc
 */

void pvOut(void *pvParam)
{
    // Welcome message task Out
   // printf("Task Out\n\r");
    
    for(;;){
        
        if(xSem2 != NULL){
            
            if(xSemaphoreTake(xSem2, ADC_PERIOD_MS) == pdTRUE){
            
            printf("Temperature: %d. %.1d \n\r",medtemp/5, medtemp%5);
            
            }
        }
        vTaskDelay(PROC_PERIOD_MS);
    }
}

int mainDataAcq(void)
{
    /* 
     * config adc
     */
    
    adc();
    
    /*
     Create semaphores
     */
    xSem1 = xSemaphoreCreateBinary();
    xSem2 = xSemaphoreCreateBinary();
    
    // Init UART and redirect tdin/stdot/stderr to UART
    if(UartInit(PBCLOCK, 115200) != UART_SUCCESS) {
        PORTAbits.RA3 = 1; // If Led active error initializing UART
        while(1);
    }
    
    __XC_UART = 1;
    
    // Welcome message
    printf("Prints voltage at AN0 (Pin 54 of ChipKIT)\n\r");
    
    /* Create the tasks defined within this file. */
	xTaskCreate( pvAcq, ( const signed char * const ) "Acknowledge", configMINIMAL_STACK_SIZE, NULL, ACQ_PRIORITY, NULL );
    xTaskCreate( pvProc, ( const signed char * const ) "Processing", configMINIMAL_STACK_SIZE, NULL, PROC_PRIORITY, NULL );
    xTaskCreate( pvOut, ( const signed char * const ) "Output", configMINIMAL_STACK_SIZE, NULL, OUT_PRIORITY, NULL );
    
    /* Finally start the scheduler. */
	vTaskStartScheduler();

	/* Will only reach here if there is insufficient heap available to start
	the scheduler. */
	return 0;
}


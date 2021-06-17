/* Standard includes */
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <xc.h>
#include <sys/attribs.h>

/* Kernel includes */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

/* System includes */
#include "./uart.h"

#define NR_SAMPLES 20

#define SYSCLK  80000000L // System clock frequency, in Hz
#define PBCLOCK 40000000L // Peripheral Bus Clock frequency, in Hz

#define CHOOSE_ACQ_PRIORITY         (tskIDLE_PRIORITY + 1)
#define CHOOSE_GENERATOR_PRIORITY   (tskIDLE_PRIORITY + 2)
#define OUT_PRIORITY                (tskIDLE_PRIORITY + 3 )

QueueHandle_t xTypeWave;
QueueHandle_t xFreq;
QueueHandle_t xAmp;

volatile int wavepoints[NR_SAMPLES];


/* TASKS */

void pvAcq(void *Param)
{
    
    char type_wave;
    char f;
    char a;
    int wave = 0;
    int freq = 0;
    int amp = 0;
    
    xTypeWave = xQueueCreate(1,sizeof(wave));
    xFreq = xQueueCreate(1,sizeof(freq));
    xAmp = xQueueCreate(1,sizeof(amp));
    
    for(;;) {
        
        printf("Choose the type of waveform:\n\r");
        printf("1 - SQUARE || 2 - TRIANGLE || 3 - SINUSOIDAL \n\r");
        
        while(!UART_SUCCESS)
        {
            printf("Onda: ");
            GetChar(&type_wave);
            wave = atoi(&type_wave);
            if((wave == 1) || (wave == 2) || (wave == 3)){
                break;
            }
            else{
                printf("Try again! \n1 - SQUARE || 2 - TRIANGLE || 3 - SINUSOIDAL \n\r");
            }
        }
        
        printf("Choose the frequency of the waveform [1; 100] (Hz) \n\r");
        
        while(!UART_SUCCESS)
        {
            printf("Frequency: ");
            GetChar(&f);
            freq = atoi(&f);
            if((freq >= 1) && (freq <= 100)){
                break;
            }
            else{
                printf("Try again! Choose the frequency of the waveform [1; 100] (Hz): \n\r");
            }
        }
        
        printf("Choose the amplitude of the waveform [0; 165] (amplitude = amplitude/100 ) (V) \n\r");
       
        while(!UART_SUCCESS)
        {
            printf("Amplitude: ");
            GetChar(&a);
            amp = atoi(&a);
            if((amp >= 0) && (amp <= 165)){
                break;
            }
            else{
                printf("Try again! Choose the amplitude of the waveform [0; 165] (amplitude = amplitude/100 ) (V) \n\r");
            }
        }
        
        xQueueSend(xTypeWave,&wave,portMAX_DELAY);
        xQueueSend(xFreq,&freq,portMAX_DELAY);
        xQueueSend(xAmp,&amp,portMAX_DELAY);
        
        vTaskSuspend(NULL);
    }
} 

void pvWaveGenerator(void *Param)
{
    
int wave = 0;
int freq = 0;
int ampkey = 0;
int amp = 0;
int i, j, k;
    
for(;;)
{
    //Calculo do valor de amplitude (ampkey Ã© o valor inserido no teclado -> amp *100))
    if(xAmp != NULL){

        if(xQueueReceive( xAmp, &ampkey, portMAX_DELAY ) == pdPASS){

            amp = ampkey/100; // ISTO está mal!!! 

            if(xTypeWave != NULL){

                if(xQueueReceive( xTypeWave, &wave, portMAX_DELAY ) == pdPASS){

                    switch(wave)
                    {
                        case :
                            break;
                        case:
                            break:
                        case :
                            break;
                        default:
                    }

                    vTaskSuspend(NULL);
                }
            }
        }    
    }  
}    

}

/* Every time the taks is executed, it reads one value of the wavepoints array and 
 * it calculates the duty cycle recuired to obtain that value of voltage after the filter,
 * then it sends it.
 * 
 */
void pvOut(void *pvParam)
{
    TickType_t xLastWakeTime;; 
    static uint16_t i=0;
    
    // Initialise the xLastWakeTime variable with the current time
    xLastWakeTime = xTaskGetTickCount();
       
   
    
    // Multiplicar valores de wavepoints por 10 para guardar casa decimal 
    // Imprimir wavepoints/10
    
    for(;;)
    {
        
                    
    }
}
    
int mainWaveformGenerator()
{
    TRISAbits.TRISA3 = 0;
    PORTAbits.RA3 = 0;
    
    if(UartInit(configPERIPHERAL_CLOCK_HZ, 115200) != UART_SUCCESS) {
        PORTAbits.RA3 = 1; 
        while(1);
    }
    
    __XC_UART = 1;
    
    printf("ARBITARY WAVEFORM GENERATOR\n\r");
    
    xTaskCreate(pvAcq,(const signed char * const) "Acquisition", configMINIMAL_STACK_SIZE, NULL, CHOOSE_ACQ_PRIORITY ,NULL);
    xTaskCreate(pvWaveGenerator,(const signed char * const) "Generator", configMINIMAL_STACK_SIZE, NULL, CHOOSE_GENERATOR_PRIORITY ,NULL);
    xTaskCreate(pvOut, ( const signed char * const ) "Output", configMINIMAL_STACK_SIZE, NULL, OUT_PRIORITY, NULL );
    
    /* Finally start the scheduler. */
	vTaskStartScheduler();
    
    /* Will only reach here if there is insufficient heap available to start
	the scheduler. */
    return 0;
}

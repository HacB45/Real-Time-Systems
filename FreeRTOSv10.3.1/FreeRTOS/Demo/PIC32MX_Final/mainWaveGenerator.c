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
#include "pwm.h"

/* System includes */
#include "uart.h"

#define SYSCLK  80000000L // System clock frequency, in Hz
#define PBCLOCK 40000000L // Peripheral Bus Clock frequency, in Hz

#define CHOOSE_ACQ_PRIORITY         (tskIDLE_PRIORITY + 1)
#define CHOOSE_GENERATOR_PRIORITY   (tskIDLE_PRIORITY + 2)
#define OUT_PRIORITY                (tskIDLE_PRIORITY + 3)

QueueHandle_t xTypeWave;
QueueHandle_t xFreq;
QueueHandle_t xAmp;

TaskHandle_t xWAVE;
TaskHandle_t xOUTPUT;

volatile int wavepoints[1000];
volatile uint16_t NrSamples = 0;

/* Functions declaration */
void GenSqrWave(uint16_t, uint16_t);
void GenTriWave(uint16_t, uint16_t);
void GenSinWave(uint16_t, uint16_t);

/* TASKS */

void pvAcq(void *Param)
{
    
    char type_wave;
    char f[3];
    char a[3];
    int wave = 0;
    int freq = 0;
    int amp = 0;
    int check = -1;
    
    xTypeWave = xQueueCreate(1,sizeof(wave));
    xFreq = xQueueCreate(1,sizeof(freq));
    xAmp = xQueueCreate(1,sizeof(amp));
    
    /* Analising if the queues were created correctly */
    if((xTypeWave == NULL) || (xFreq == NULL) || (xAmp == NULL))
    {
        printf("Queues were not created successfully.\n\r");
    }
    
    printf("Choose the type of waveform:\n\r");
    printf("1 - SQUARE || 2 - TRIANGLE || 3 - SINUSOIDAL \n\r");
    
    for(;;) {
        //vTaskSuspend(xHandleT3);
        printf("Type Wave: ");
        while(!UART_SUCCESS)
        {
            
            GetChar(&type_wave);
            wave = atoi(&type_wave);
            if((wave == 1) || (wave == 2) || (wave == 3)){
                break;
            }
        }
        printf("%d\n\r", wave);
        
        printf("Choose the frequency of the waveform [001; 100] (Hz) \n\r");
        printf("Frequency: ");
        
        while((freq < 1) || (freq > 100)){
            
            while(UART_FAIL == check){

                check = GetChar(&f[0]);
            }

            check = -1;

            while(UART_FAIL == check){

                check = GetChar(&f[1]);
            }

            check = -1;

            while(UART_FAIL == check){

                check = GetChar(&f[2]);
            }

            check = -1;
            freq = atoi(&f[0]);
            
            printf("%d (Hz) \n\r" , freq);
            
            if((freq < 1) || (freq > 100)){
                printf("ERROR!!! \n\r");
                printf("Frequency: ");
            }
        }
        
        printf("Choose the amplitude of the waveform [0; 165] (amplitude = amplitude/100 ) (V) \n\r");
        printf("Amplitude: ");
        
        while((amp < 1) || (amp > 165)){
        
            while(UART_FAIL == check){

                check = GetChar(&a[0]);
            }

            check = -1;

            while(UART_FAIL == check){

                check = GetChar(&a[1]);
            }

            check = -1;

            while(UART_FAIL == check){

                check = GetChar(&a[2]);
            }

            check = -1;
            amp = atoi(&a[0]);
            
            printf("%d.%d (V) \n\r" , amp/100, amp%100);
            
            if((amp < 1) || (amp > 165)){
                printf("ERROR!!! \n\r");
                printf("Amplitude: ");
            }
        
        }
        
        xQueueSend(xTypeWave,&wave,portMAX_DELAY);
        xQueueSend(xFreq,&freq,portMAX_DELAY);
        xQueueSend(xAmp,&amp,portMAX_DELAY);
        
        vTaskResume(xWAVE);
        vTaskSuspend(NULL);
        
    }
} 

void pvWaveGenerator(void *Param)
{
    vTaskSuspend(xWAVE);

int wave = 0;
uint16_t freq = 0;
uint16_t amp = 0;

for(;;)
{
    if(xFreq != NULL)
    {
        if(xQueueReceive( xFreq, &freq, portMAX_DELAY ) == pdPASS)
        {
            if(xTypeWave != NULL)
            {
                if(xQueueReceive( xTypeWave, &wave, portMAX_DELAY ) == pdPASS)
                {
                    if(xAmp != NULL)
                    {
                        if(xQueueReceive(xAmp, &amp, portMAX_DELAY) == pdPASS)
                        {
                            NrSamples = ((1000/freq)/portTICK_RATE_MS); 
                            xQueueSend(xFreq,&freq,portMAX_DELAY);
                            
                            switch(wave)
                            {
                            case 1:
                                printf("Generating Square Waveform... \n\r");
                                GenSqrWave(NrSamples, amp); 
                                break;
                        
                            case 2:
                                printf("Generating Triangular Waveform... \n\r");
                                GenTriWave(NrSamples, amp);
                                break;
                           
                            case 3:
                                printf("Generating Sinusoidal Waveform... \n\r");
                                GenSinWave(NrSamples, amp);
                                break;
                            default:
                                break;
                            }
                            
                        }
                    }
                }
            }
        }    
    }  
    vTaskResume(xOUTPUT); 
    //vTaskSuspend(NULL);
}   
}

/* Every time the taks is executed, it reads one value of the wavepoints array and 
 * it calculates the duty cycle recuired to obtain that value of voltage after the filter,
 * then it sends it.
 * 
 */
void pvOut(void *pvParam)
{ 
    vTaskSuspend(xOUTPUT);
    
   
    
    TickType_t xLastWakeTime;; 
    static uint16_t i=0;
    
    // Initialise the xLastWakeTime variable with the current time
    xLastWakeTime = xTaskGetTickCount();
    const TickType_t xFrequency = 1;
     
    pwm();
    
    for(;;)
    {                                                   
        
        OC1RS = (wavepoints[i]*(PR2+1))/330;
        i++;

        if(i==NrSamples)
        {
            i=0;
        }
                  
        vTaskDelayUntil(&xLastWakeTime, xFrequency);                   
    }  
}
    
int mainWaveGenerator()
{
    TRISAbits.TRISA3 = 0;
    PORTAbits.RA3 = 0;
    
    if(UartInit(configPERIPHERAL_CLOCK_HZ, 115200) != UART_SUCCESS) {
        PORTAbits.RA3 = 1; 
        while(1);
    }
    
    __XC_UART = 1;
    
    printf("ARBITARY WAVEFORM GENERATOR\n\r");
    
    xTaskCreate(pvOut, ( const signed char * const ) "Output", configMINIMAL_STACK_SIZE, NULL, OUT_PRIORITY, &xOUTPUT);
    xTaskCreate(pvWaveGenerator,(const signed char * const) "Generator", configMINIMAL_STACK_SIZE, NULL, CHOOSE_GENERATOR_PRIORITY , &xWAVE);
    xTaskCreate(pvAcq,(const signed char * const) "Acquisition", configMINIMAL_STACK_SIZE, NULL, CHOOSE_ACQ_PRIORITY ,NULL);
    
   
    
    /* Finally start the scheduler. */
	vTaskStartScheduler();
    
    /* Will only reach here if there is insufficient heap available to start
	the scheduler. */
    return 0;
}

/*
 * Function to generate the points to the square waveform.
 * It generates points between 0 and 330 in order to use only integer values during calculations.
 */
void GenSqrWave(uint16_t nrSamples, uint16_t amplitude)
{
   int amp = amplitude * 2;
    
    int i;
    for (i = 0; i < nrSamples; i++)
    {
        if (i<(nrSamples/2))
        {
            wavepoints[i] = amp;
        }
        else
        {
            wavepoints[i] = 0;
        } 
    } 
}

/*
 * Function to generate the points to the triangular waveform
 */
void GenTriWave(uint16_t nrSamples, uint16_t amplitude)
{
    int j;
    int amp = amplitude * 2;
    
    for (j = 0; j < nrSamples; j++)
    {
        if (j<(nrSamples/2))
        {
            wavepoints[j] = j * (amp/nrSamples) * 2 ;
        }
        else
        {
            wavepoints[j] = ( nrSamples - j ) *  (amp/nrSamples) *2;
        } 
    }
}

/*
 * Function to generate the points to the sinusoidal waveform
 */
void GenSinWave(uint16_t nrSamples, uint16_t amplitude)
{
    int k;
    for (k = 0; k < nrSamples; k++)
    {
        wavepoints[k] = (int)(amplitude * sin(2 * M_PI / nrSamples * k) + amplitude);
    }                      
}
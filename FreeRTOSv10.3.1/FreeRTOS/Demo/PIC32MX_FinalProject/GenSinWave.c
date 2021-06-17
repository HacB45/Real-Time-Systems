/* Standard includes. */
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <sys/attribs.h>


void GenSinWave(void)
{
    for (k = 0; k < NR_SAMPLES; k++)
    {
        wavepoints[k] = (int)(amp * sin(2 * M_PI / NR_SAMPLES * k) + amp);
    }                      
}

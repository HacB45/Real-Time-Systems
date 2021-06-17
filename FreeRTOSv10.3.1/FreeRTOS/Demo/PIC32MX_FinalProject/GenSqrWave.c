

void GenSqrWave(void)
{
    int i;
    for (i = 0; i < NR_SAMPLES; i++)
    {
        if (i<(NR_SAMPLES/2))
        {
            wavepoints[i] = amp;
        }
        else
        {
            wavepoints[i] = 0;
        } 
    }
}


                        


void GenTriWave(void)
{
    for (j = 0; j < NR_SAMPLES; j++)
    {
        if (j<(NR_SAMPLES/2))
        {
            wavepoints[j] = j * (amp/NR_SAMPLES) * 2 ;
        }
        else
        {
            wavepoints[j] = ( NR_SAMPLES - j ) *  (amp/NR_SAMPLES) *2;
        } 
    }
}
                        
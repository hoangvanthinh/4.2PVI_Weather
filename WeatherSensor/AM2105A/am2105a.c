
#include "../../SES.h"

static uint16_t us;
uint8_t Frame[5];
uint16_t Sensor_data[2];

void MCU_Start_Cmd(void)
{
	/*Creat a start signal*/
	Temp_Hum_SetDigitalOutput();
	Temp_Hum_SetLow();
	//Start timer 3
    __delay_ms(1);
    Temp_Hum_SetHigh();
    __delay_us(25);
	Temp_Hum_SetDigitalInput();

}

static uint8_t Sensor_Response(void)
{
    us = TMR3_Period16BitGet()/500;
    TMR3_Counter16BitSet(0);
    T3CONbits.TON = 1;
    while(Temp_Hum_GetValue() == 0 && (TMR3_Counter16BitGet() <= 100*us));
    if(TMR3_Counter16BitGet() > 100*us)
    {
        return 0;
    }
    else
    {
        TMR3_Counter16BitSet(0);
        while(Temp_Hum_GetValue() == 1 && (TMR3_Counter16BitGet() <= 100*us));
        if(TMR3_Counter16BitGet() > 100*us)
        {
            return 0;
        }
        else
        {
            return 1;
        }
    }
}

uint8_t Read_Data(uint8_t *data)
{
    *data = 0;
    uint8_t i;
    for(i=0 ;i<8; i++)
    {
        TMR3_Counter16BitSet(0);
        while(Temp_Hum_GetValue() == 0)
        {
            if(TMR3_Counter16BitGet() > 100*us)
            {
                return 0;
            }
        }
        TMR3_Counter16BitSet(0);
        while(Temp_Hum_GetValue() == 1)
        {
            if(TMR3_Counter16BitGet() > 100*us)
            {
                return 0;
            }
        }
        if(TMR3_Counter16BitGet() > 50*us)
        {
             *data |= (1 << (7 - i));
        }
    }
    return 1;
}

void Temp_Hum_Process(void)
{
    MCU_Start_Cmd();
    if(Sensor_Response())
    {
        if(Read_Data(&Frame[0])&&Read_Data(&Frame[1])&&Read_Data(&Frame[2])&&Read_Data(&Frame[3])&&Read_Data(&Frame[4]))
        {
            if(Frame[4] ==((Frame[0]+Frame[1]+Frame[2]+Frame[3])&0xFF))
            {
                Sensor_data[0] = word(Frame[0],Frame[1]);
                Sensor_data[1] = word(Frame[2],Frame[3]);
                printf("\nHumidity :%d\n",(Sensor_data[0])/10);
                printf("Temperature :%d\n",(Sensor_data[1])/10);
            }
            else
                printf("Check sum error\n");
        }
        else 
            printf("Time out\n");
    }
    T3CONbits.TON = 0;
}


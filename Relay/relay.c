

#include "../SES.h"

uint16_t Relay_State[8]={0};

void Relay_Process(void)
{
    if(Relay_State[0] == 0)
    {
        RELAY_SetLow();
    }
    else
        RELAY_SetHigh();
//    if(Relay_State[1] == 0)
//    {
//        RD_RED_SetLow();
//    }
//    else
//        RD_RED_SetHigh();  
}

void Relay_Init(void)
{
    Relay_Process();
}

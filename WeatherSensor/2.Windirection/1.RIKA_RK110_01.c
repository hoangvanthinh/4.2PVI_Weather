#include "../../SES.h"

void RIKA_RK110_01_Init(void)
{
    RIKA_RK110_01.Func = MB_FC_READ_HOLD_REGISTERS;
    RIKA_RK110_01.Frame.REGsAdd = 0x002A;
    RIKA_RK110_01.Frame.NumberREGs = 1;
           
}
void Getdata_Sensor_RIKA_RK110_01(void)
{
    WeatherInfor.WindDirection = &(Sensor[SENSOR_WINDRIRECTION].Data);
  
}

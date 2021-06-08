#include "../../SES.h"

void RIKA_RK100_01_Init(void)
{
    RIKA_RK100_01.Func = MB_FC_READ_HOLD_REGISTERS;
    RIKA_RK100_01.Frame.REGsAdd = 0x002A;
    RIKA_RK100_01.Frame.NumberREGs = 1;
           
}
void Getdata_Sensor_RIKA_RK100_01(void)
{
    WeatherInfor.WindSpeed = &(Sensor[SENSOR_WINDSPEED].Data);
    
}
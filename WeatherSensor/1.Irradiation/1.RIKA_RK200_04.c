#include "../../SES.h"

void RIKA_RK200_04_Init(void)
{
    RIKA_RK200_04.Func = MB_FC_READ_HOLD_REGISTERS;
    RIKA_RK200_04.Frame.REGsAdd = 0;
    RIKA_RK200_04.Frame.NumberREGs = 1;
           
}
void Getdata_Sensor_RIKA_RK200_04(void)
{
    WeatherInfor.Irradiation = Sensor[SENSOR_IRRADIATION].Data;
    
}
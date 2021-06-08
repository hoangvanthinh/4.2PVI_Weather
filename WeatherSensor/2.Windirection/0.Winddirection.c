#include "../../SES.h"

void Windirection_Initialization(void)
{
    switch (Sensor[SENSOR_WINDRIRECTION].Setup.Series)
    {
        case RIKA_110_01:
            RIKA_RK110_01_Init();
            Sensor[SENSOR_WINDRIRECTION].Setup.Func = RIKA_RK110_01.Func;
            Sensor[SENSOR_WINDRIRECTION].Setup.Frame.NumberREGs = RIKA_RK110_01.Frame.NumberREGs;
            Sensor[SENSOR_WINDRIRECTION].Setup.Frame.REGsAdd = RIKA_RK110_01.Frame.REGsAdd;
            Getdata_Sensor_RIKA_RK110_01();
            break;
                    

    }
    
}
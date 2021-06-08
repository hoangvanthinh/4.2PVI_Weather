#include "../../SES.h"

void Windspeed_Initialization(void)
{
        switch (Sensor[SENSOR_WINDSPEED].Setup.Series)
    {
        case RIKA_100_01:
            RIKA_RK100_01_Init();
            Sensor[SENSOR_WINDSPEED].Setup.Func = RIKA_RK100_01.Func;
            Sensor[SENSOR_WINDSPEED].Setup.Frame.NumberREGs = RIKA_RK100_01.Frame.NumberREGs;
            Sensor[SENSOR_WINDSPEED].Setup.Frame.REGsAdd = RIKA_RK100_01.Frame.REGsAdd;
            Getdata_Sensor_RIKA_RK100_01();
            break;
                    
            
    }
    
}
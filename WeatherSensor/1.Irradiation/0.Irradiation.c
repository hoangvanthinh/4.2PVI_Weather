#include "../../SES.h"

void Irradiation_Initialization(void)
{
    
    switch (Sensor[SENSOR_IRRADIATION].Setup.Series)
    {
        case RIKA_200_04:
            RIKA_RK200_04_Init();
            Sensor[SENSOR_IRRADIATION].Setup.Func = RIKA_RK200_04.Func;
            Sensor[SENSOR_IRRADIATION].Setup.Frame.NumberREGs = RIKA_RK200_04.Frame.NumberREGs;
            Sensor[SENSOR_IRRADIATION].Setup.Frame.REGsAdd = RIKA_RK200_04.Frame.REGsAdd;
            Getdata_Sensor_RIKA_RK200_04();
            break;
                    

    }
}

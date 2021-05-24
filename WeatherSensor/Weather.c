#include "../SES.h"

WEATHER_DATA WeatherInfor;
WEATHER_SENSOR Sensor[7];
SENSOR_SETUP RIKA_RK200_04;

void All_Sensor_Init(void) {
    char s;
    for (s = 0; s < MAX_Sensor; s++) {
        switch (s) {
            case SENSOR_IRRADIATION:
            {
                Irradiation_Initialization();
            }
                break;

            case SENSOR_WINDSPEED:
            {
            }
                break;

            case SENSOR_WINDRIRECTION:
            {
            }
                break;

            case SENSOR_RAIN:
            {
            }
                break;

            case SENSOR_AMBIENT_T:
            {
            }
                break;

            case SENSOR_AIR_H:
            {
            }
                break;

            case SENSOR_ATM:
            {
            }
                break;

            default:
            {
            }
                break;
        }
    }
}
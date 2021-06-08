#include "../SES.h"

WEATHER_DATA WeatherInfor;
uint16_t SES_DATA[7];
WEATHER_SENSOR Sensor[7];
SENSOR_SETUP RIKA_RK200_04;
SENSOR_SETUP RIKA_RK110_01;
SENSOR_SETUP RIKA_RK100_01;

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
                Windspeed_Initialization();
            }
                break;

            case SENSOR_WINDRIRECTION:
            {
                Windirection_Initialization();
            }
                break;

            case SENSOR_RAIN:
            {
                Rain_Initialization();
            }
                break;

            case SENSOR_AMBIENT_T:
            {
                AmbientTemperature_Initialization();
            }
                break;

            case SENSOR_AIR_H:
            {
                Airhumidity_Initialization();
            }
                break;

            case SENSOR_ATM:
            {
                Atmospheric_Initialization();
            }
                break;

            default:
            {
                break;
            }
                
        }
    }
}

void DataInterface_to_Modbus(void)
{
    SES_DATA[0] = *WeatherInfor.WindSpeed;
    SES_DATA[1] = *WeatherInfor.Irradiation;
    SES_DATA[2] = *WeatherInfor.WindDirection;
    SES_DATA[3] = *WeatherInfor.Ambient_T;
    SES_DATA[4] = *WeatherInfor.Air_H;
    SES_DATA[5] = *WeatherInfor.Atm;
    SES_DATA[6] = *WeatherInfor.Rain;
}
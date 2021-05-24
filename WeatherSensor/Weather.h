
//#include "../SES.h"
#include "1.Irradiation/0.Irradiation.h"
#include "2.Windirection/0.Windirection.h"
#include "3.WindSpeed/0.Winspeed.h"


enum Weather_Sensor
{
    SENSOR_WINDSPEED,
    SENSOR_WINDRIRECTION,
    SENSOR_IRRADIATION,
    SENSOR_AMBIENT_T,
    SENSOR_AIR_H,
    SENSOR_ATM,
    SENSOR_RAIN,
    
    MAX_Sensor
};

typedef struct 
{
    uint16_t REGsAdd;
    uint16_t NumberREGs;

}Data_Frame;

typedef struct
{
    uint8_t UID;
    uint16_t SID;
    uint8_t Series;            
    uint8_t Func;
    Data_Frame Frame;  
    uint8_t EN;
}SENSOR_SETUP;
extern SENSOR_SETUP RIKA_RK200_04;

typedef struct
{
    UINT16 WindSpeed;
    UINT16 WindDirection;
    UINT16 Irradiation;
    UINT16 Ambient_T;
    UINT16 Air_H;
    UINT16 Rain;
    UINT16 Atm;
    
}WEATHER_DATA;

extern WEATHER_DATA WeatherInfor;

typedef struct
{
    SENSOR_SETUP Setup;
    UINT16 Data;
    
}WEATHER_SENSOR;
extern WEATHER_SENSOR Sensor[7];

void All_Sensor_Init(void);
#include "SES.h"
//
// variables declaration
char Temperature[] = "Temp = 00.0 C  ";
char Humidity[] = "RH   = 00.0 %  ";
unsigned short T_Byte1, T_Byte2, RH_Byte1, RH_Byte2, CheckSum;
static unsigned int Temp, RH;
static char tmp_chanel = 0;
// send start signal to the sensor
static int us;

void Start_Signal(void) {
    
    DHT22_PIN_DIR_1 = 0; // configure DHT22_PIN as output
    DHT22_PIN_1 = 0; // clear DHT22_PIN output (logic 0)

    __delay_ms(2); // wait 25 ms
    DHT22_PIN_1 = 1; // set DHT22_PIN output (logic 1)

    __delay_us(25); // wait 30 us
    DHT22_PIN_DIR_1 = 1; // configure DHT22_PIN as input
    
 
}

// Check sensor response

static UINT8 Check_Response() {
    us = TMR3_Period16BitGet() / 500;
    TMR3_Counter16BitSet(0);
    T3CONbits.TON = 1;
    while (!DHT22_PORT_1 && (TMR3_Counter16BitGet() < 100 * us)); // wait until DHT22_PIN becomes high (checking of 80µs low time response)
    if (TMR3_Counter16BitGet() > 99 * us) {// if response time > 99µS  ==> Response error
        return 0; // return 0 (Device has a problem with response)

    } else {
        TMR3_Counter16BitSet(0);
        while (DHT22_PORT_1 && (TMR3_Counter16BitGet() < 100 * us)); // wait until DHT22_PIN becomes low (checking of 80µs high time response)

        if (TMR3_Counter16BitGet() > 99 * us) {// if response time > 99µS  ==> Response error

            return 0; // return 0 (Device has a problem with response)

        } else {

            return 1; // return 1 (response OK)

        }
    }
}

// Data read function

//static 

unsigned short Read_Data(unsigned short* dht_data) {
    *dht_data = 0;
    char i;
    for (i = 0; i < 8; i++) {
        TMR3_Counter16BitSet(0);
        while (!DHT22_PORT_1)
            if (TMR3_Counter16BitGet() > 100 * us) {
                return 1;
            }

        TMR3_Counter16BitSet(0);
        while (DHT22_PORT_1)
            if (TMR3_Counter16BitGet() > 100 * us) { // if high time > 100  ==>  Time out error (Normally it takes 26-28µs for 0 and 70µs for 1)

                return 1; // return 1 (timeout error)
            }

        if (TMR3_Counter16BitGet() > 50 * us) // if high time > 50  ==>  Sensor sent 1

            *dht_data |= (1 << (7 - i)); // set bit (7 - i)
    }

    return 0; // return 0 (data read OK)
}

void READ_DHT22(void) {

    Start_Signal(); // send start signal to the sensor

    if (Check_Response()) // check if there is a response from sensor (If OK start reading humidity and temperature data)
    {
//        while (DHT22_PORT_1);
        // read (and save) data from the DHT22 sensor and check time out errors
        if (Read_Data(&RH_Byte1) || Read_Data(&RH_Byte2) || Read_Data(&T_Byte1) || Read_Data(&T_Byte2) || Read_Data(&CheckSum)) {

            printf("Time out!");
        } else // if there is no time out error
        {
            if (CheckSum == ((RH_Byte1 + RH_Byte2 + T_Byte1 + T_Byte2) & 0xFF)) { // if there is no checksum error
                RH = RH_Byte1;
                RH = (RH << 8) | RH_Byte2;
                Temp = T_Byte1;
                Temp = (Temp << 8) | T_Byte2;


                if (Temp > 0X8000) { // if temperature < 0
                    Temperature[6] = '-'; // put minus sign '-'
                    Temp = Temp & 0X7FFF;
                } else // otherwise (temperature > 0)
                    Temperature[6] = ' '; // put space ' '
                Temperature[7] = (Temp / 100) % 10 + 48;
                Temperature[8] = (Temp / 10) % 10 + 48;
                Temperature[10] = Temp % 10 + 48;
                Temperature[11] = 223; // put degree symbol (°)

                if (RH == 1000) // if the relative humidity = 100.0 %
                    Humidity[6] = 1 + 48; // put 1 of hundreds
                else
                    Humidity[6] = ' '; // put space ' '
                Humidity[7] = (RH / 100) % 10 + 48;
                Humidity[8] = (RH / 10) % 10 + 48;
                Humidity[10] = RH % 10 + 48;


                printf("%s", Temperature);
                printf("%s\r", Humidity);
            }// if there is a checksum error
            else {

                printf("Checksum Error!");
            }
        }
    }
    T3CONbits.TON = 0;
}
// main function
void READ_DHT22_Chanel(char chanel) {

    tmp_chanel  = chanel;
    Start_Signal(); // send start signal to the sensor

    if (Check_Response()) // check if there is a response from sensor (If OK start reading humidity and temperature data)
    {
//        while (DHT22_PORT_1);
        // read (and save) data from the DHT22 sensor and check time out errors
        if (Read_Data(&RH_Byte1) || Read_Data(&RH_Byte2) || Read_Data(&T_Byte1) || Read_Data(&T_Byte2) || Read_Data(&CheckSum)) {

            printf("Time out!");
        } else // if there is no time out error
        {
            if (CheckSum == ((RH_Byte1 + RH_Byte2 + T_Byte1 + T_Byte2) & 0xFF)) { // if there is no checksum error
                RH = RH_Byte1;
                RH = (RH << 8) | RH_Byte2;
                Temp = T_Byte1;
                Temp = (Temp << 8) | T_Byte2;


                if (Temp > 0X8000) { // if temperature < 0
                    Temperature[6] = '-'; // put minus sign '-'
                    Temp = Temp & 0X7FFF;
                } else // otherwise (temperature > 0)
                    Temperature[6] = ' '; // put space ' '
                Temperature[7] = (Temp / 100) % 10 + 48;
                Temperature[8] = (Temp / 10) % 10 + 48;
                Temperature[10] = Temp % 10 + 48;
                Temperature[11] = 223; // put degree symbol (°)

                if (RH == 1000) // if the relative humidity = 100.0 %
                    Humidity[6] = 1 + 48; // put 1 of hundreds
                else
                    Humidity[6] = ' '; // put space ' '
                Humidity[7] = (RH / 100) % 10 + 48;
                Humidity[8] = (RH / 10) % 10 + 48;
                Humidity[10] = RH % 10 + 48;


                printf("%s", Temperature);
                printf("%s\r", Humidity);
            }// if there is a checksum error
            else {

                printf("Checksum Error!");
            }
        }
    }
    T3CONbits.TON = 0;
}
// main function

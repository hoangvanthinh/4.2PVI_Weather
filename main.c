/**
  Generated main.c file from MPLAB Code Configurator

  @Company
    Microchip Technology Inc.

  @File Name
    main.c

  @Summary
    This is the generated main.c using PIC24 / dsPIC33 / PIC32MM MCUs.

  @Description
    This source file provides main entry point for system initialization and application code development.
    Generation Information :
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.166.1
        Device            :  dsPIC33EP512MU810
    The generated drivers are tested against the following:
        Compiler          :  XC16 v1.41
        MPLAB 	          :  MPLAB X v5.30
 */

/*
    (c) 2020 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
 */

/**
  Section: Included Files
 */
//#include "mcc_generated_files/system.h"
#include "SES.h"
//#include "DS18B20x27.h"

int main(void) {
    static uint32_t t;
    Tick_Init_SES();
    TickInit();
    t = TickGet();

    // initialize the device
    SYSTEM_Initialize();

    Init_Temperaturex27();
    READ_I42_Setup();



    //--------------------------------------------------------------------------
    // MULTIMETER
//    if(Status_Save_Erom != 111)
//    {
//        NumberofMeter = 5;
//        
//        Meters[0].ID = 1;
//        Meters[0].Series = SELEC_MFM384;
//        Meters[1].ID = 2;
//        Meters[1].Series = SCHNEIDER_PM2120;
//        Meters[2].ID = 3;
//        Meters[2].Series = SCHNEIDER_PM2120;
//        Meters[3].ID = 4;
//        Meters[3].Series = SCHNEIDER_PM2120;
//        Meters[4].ID = 5;
//        Meters[4].Series = SCHNEIDER_PM2120;
//    }
    //====================================================================
    Information_Device();
    SES_ModbusTCP_Server_Init();
    SES_ModbusRTU_Master_Init();
    //--------------------------------------------------------------------------
    Modbus_RTU_Slave_Add_Setup();
    SES_ModbusRTU_Slave_start();
    //
    
    SPEAKER_SetHigh();
    __delay_ms(200);
    SPEAKER_SetLow();
    
    while (1) {
        
        if (TickGet() - t >= TICK_SECOND) {
            t = TickGet();
            RD_RED_Toggle();
            counter_life++;
            
        }
        if(counter_life > 30)
        {
            Reset();
        }

        SES_ModbusTCP_Server_Process();
        if (NumberofMeter > 0 && NumberofMeter < 11) {
            SES_ModbusRTU_Master_Process();
        }
        SES_ModbusRTU_Slave_Process();
    }
    return 1;
}


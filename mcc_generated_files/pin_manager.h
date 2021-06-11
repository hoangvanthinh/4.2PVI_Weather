/**
  PIN MANAGER Generated Driver File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the generated manager file for the PIC24 / dsPIC33 / PIC32MM MCUs device.  This manager
    configures the pins direction, initial state, analog setting.
    The peripheral pin select, PPS, configuration is also handled by this manager.

  @Description:
    This source file provides implementations for PIN MANAGER.
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

#ifndef _PIN_MANAGER_H
#define _PIN_MANAGER_H
/**
    Section: Includes
*/
#include <xc.h>

/**
    Section: Device Pin Macros
*/
/**
  @Summary
    Sets the GPIO pin, RA4, high using LATA4.

  @Description
    Sets the GPIO pin, RA4, high using LATA4.

  @Preconditions
    The RA4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA4 high (1)
    EN_RS485_1_SetHigh();
    </code>

*/
#define EN_RS485_1_SetHigh()          (_LATA4 = 1)
/**
  @Summary
    Sets the GPIO pin, RA4, low using LATA4.

  @Description
    Sets the GPIO pin, RA4, low using LATA4.

  @Preconditions
    The RA4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA4 low (0)
    EN_RS485_1_SetLow();
    </code>

*/
#define EN_RS485_1_SetLow()           (_LATA4 = 0)
/**
  @Summary
    Toggles the GPIO pin, RA4, using LATA4.

  @Description
    Toggles the GPIO pin, RA4, using LATA4.

  @Preconditions
    The RA4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RA4
    EN_RS485_1_Toggle();
    </code>

*/
#define EN_RS485_1_Toggle()           (_LATA4 ^= 1)
/**
  @Summary
    Reads the value of the GPIO pin, RA4.

  @Description
    Reads the value of the GPIO pin, RA4.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RA4
    postValue = EN_RS485_1_GetValue();
    </code>

*/
#define EN_RS485_1_GetValue()         _RA4
/**
  @Summary
    Configures the GPIO pin, RA4, as an input.

  @Description
    Configures the GPIO pin, RA4, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA4 as an input
    EN_RS485_1_SetDigitalInput();
    </code>

*/
#define EN_RS485_1_SetDigitalInput()  (_TRISA4 = 1)
/**
  @Summary
    Configures the GPIO pin, RA4, as an output.

  @Description
    Configures the GPIO pin, RA4, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA4 as an output
    EN_RS485_1_SetDigitalOutput();
    </code>

*/
#define EN_RS485_1_SetDigitalOutput() (_TRISA4 = 0)
/**
  @Summary
    Sets the GPIO pin, RB3, high using LATB3.

  @Description
    Sets the GPIO pin, RB3, high using LATB3.

  @Preconditions
    The RB3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB3 high (1)
    Temp_Hum_SetHigh();
    </code>

*/
#define Temp_Hum_SetHigh()          (_LATB3 = 1)
/**
  @Summary
    Sets the GPIO pin, RB3, low using LATB3.

  @Description
    Sets the GPIO pin, RB3, low using LATB3.

  @Preconditions
    The RB3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB3 low (0)
    Temp_Hum_SetLow();
    </code>

*/
#define Temp_Hum_SetLow()           (_LATB3 = 0)
/**
  @Summary
    Toggles the GPIO pin, RB3, using LATB3.

  @Description
    Toggles the GPIO pin, RB3, using LATB3.

  @Preconditions
    The RB3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB3
    Temp_Hum_Toggle();
    </code>

*/
#define Temp_Hum_Toggle()           (_LATB3 ^= 1)
/**
  @Summary
    Reads the value of the GPIO pin, RB3.

  @Description
    Reads the value of the GPIO pin, RB3.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB3
    postValue = Temp_Hum_GetValue();
    </code>

*/
#define Temp_Hum_GetValue()         _RB3
/**
  @Summary
    Configures the GPIO pin, RB3, as an input.

  @Description
    Configures the GPIO pin, RB3, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB3 as an input
    Temp_Hum_SetDigitalInput();
    </code>

*/
#define Temp_Hum_SetDigitalInput()  (_TRISB3 = 1)
/**
  @Summary
    Configures the GPIO pin, RB3, as an output.

  @Description
    Configures the GPIO pin, RB3, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB3 as an output
    Temp_Hum_SetDigitalOutput();
    </code>

*/
#define Temp_Hum_SetDigitalOutput() (_TRISB3 = 0)
/**
  @Summary
    Sets the GPIO pin, RB4, high using LATB4.

  @Description
    Sets the GPIO pin, RB4, high using LATB4.

  @Preconditions
    The RB4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB4 high (1)
    IO_RB4_SetHigh();
    </code>

*/
#define IO_RB4_SetHigh()          (_LATB4 = 1)
/**
  @Summary
    Sets the GPIO pin, RB4, low using LATB4.

  @Description
    Sets the GPIO pin, RB4, low using LATB4.

  @Preconditions
    The RB4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB4 low (0)
    IO_RB4_SetLow();
    </code>

*/
#define IO_RB4_SetLow()           (_LATB4 = 0)
/**
  @Summary
    Toggles the GPIO pin, RB4, using LATB4.

  @Description
    Toggles the GPIO pin, RB4, using LATB4.

  @Preconditions
    The RB4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB4
    IO_RB4_Toggle();
    </code>

*/
#define IO_RB4_Toggle()           (_LATB4 ^= 1)
/**
  @Summary
    Reads the value of the GPIO pin, RB4.

  @Description
    Reads the value of the GPIO pin, RB4.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB4
    postValue = IO_RB4_GetValue();
    </code>

*/
#define IO_RB4_GetValue()         _RB4
/**
  @Summary
    Configures the GPIO pin, RB4, as an input.

  @Description
    Configures the GPIO pin, RB4, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB4 as an input
    IO_RB4_SetDigitalInput();
    </code>

*/
#define IO_RB4_SetDigitalInput()  (_TRISB4 = 1)
/**
  @Summary
    Configures the GPIO pin, RB4, as an output.

  @Description
    Configures the GPIO pin, RB4, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB4 as an output
    IO_RB4_SetDigitalOutput();
    </code>

*/
#define IO_RB4_SetDigitalOutput() (_TRISB4 = 0)
/**
  @Summary
    Sets the GPIO pin, RB5, high using LATB5.

  @Description
    Sets the GPIO pin, RB5, high using LATB5.

  @Preconditions
    The RB5 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB5 high (1)
    IO_RB5_SetHigh();
    </code>

*/
#define IO_RB5_SetHigh()          (_LATB5 = 1)
/**
  @Summary
    Sets the GPIO pin, RB5, low using LATB5.

  @Description
    Sets the GPIO pin, RB5, low using LATB5.

  @Preconditions
    The RB5 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB5 low (0)
    IO_RB5_SetLow();
    </code>

*/
#define IO_RB5_SetLow()           (_LATB5 = 0)
/**
  @Summary
    Toggles the GPIO pin, RB5, using LATB5.

  @Description
    Toggles the GPIO pin, RB5, using LATB5.

  @Preconditions
    The RB5 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB5
    IO_RB5_Toggle();
    </code>

*/
#define IO_RB5_Toggle()           (_LATB5 ^= 1)
/**
  @Summary
    Reads the value of the GPIO pin, RB5.

  @Description
    Reads the value of the GPIO pin, RB5.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB5
    postValue = IO_RB5_GetValue();
    </code>

*/
#define IO_RB5_GetValue()         _RB5
/**
  @Summary
    Configures the GPIO pin, RB5, as an input.

  @Description
    Configures the GPIO pin, RB5, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB5 as an input
    IO_RB5_SetDigitalInput();
    </code>

*/
#define IO_RB5_SetDigitalInput()  (_TRISB5 = 1)
/**
  @Summary
    Configures the GPIO pin, RB5, as an output.

  @Description
    Configures the GPIO pin, RB5, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB5 as an output
    IO_RB5_SetDigitalOutput();
    </code>

*/
#define IO_RB5_SetDigitalOutput() (_TRISB5 = 0)
/**
  @Summary
    Sets the GPIO pin, RB6, high using LATB6.

  @Description
    Sets the GPIO pin, RB6, high using LATB6.

  @Preconditions
    The RB6 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB6 high (1)
    eth_rst_SetHigh();
    </code>

*/
#define eth_rst_SetHigh()          (_LATB6 = 1)
/**
  @Summary
    Sets the GPIO pin, RB6, low using LATB6.

  @Description
    Sets the GPIO pin, RB6, low using LATB6.

  @Preconditions
    The RB6 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB6 low (0)
    eth_rst_SetLow();
    </code>

*/
#define eth_rst_SetLow()           (_LATB6 = 0)
/**
  @Summary
    Toggles the GPIO pin, RB6, using LATB6.

  @Description
    Toggles the GPIO pin, RB6, using LATB6.

  @Preconditions
    The RB6 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB6
    eth_rst_Toggle();
    </code>

*/
#define eth_rst_Toggle()           (_LATB6 ^= 1)
/**
  @Summary
    Reads the value of the GPIO pin, RB6.

  @Description
    Reads the value of the GPIO pin, RB6.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB6
    postValue = eth_rst_GetValue();
    </code>

*/
#define eth_rst_GetValue()         _RB6
/**
  @Summary
    Configures the GPIO pin, RB6, as an input.

  @Description
    Configures the GPIO pin, RB6, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB6 as an input
    eth_rst_SetDigitalInput();
    </code>

*/
#define eth_rst_SetDigitalInput()  (_TRISB6 = 1)
/**
  @Summary
    Configures the GPIO pin, RB6, as an output.

  @Description
    Configures the GPIO pin, RB6, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB6 as an output
    eth_rst_SetDigitalOutput();
    </code>

*/
#define eth_rst_SetDigitalOutput() (_TRISB6 = 0)
/**
  @Summary
    Sets the GPIO pin, RC1, high using LATC1.

  @Description
    Sets the GPIO pin, RC1, high using LATC1.

  @Preconditions
    The RC1 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RC1 high (1)
    IO_RC1_SetHigh();
    </code>

*/
#define IO_RC1_SetHigh()          (_LATC1 = 1)
/**
  @Summary
    Sets the GPIO pin, RC1, low using LATC1.

  @Description
    Sets the GPIO pin, RC1, low using LATC1.

  @Preconditions
    The RC1 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RC1 low (0)
    IO_RC1_SetLow();
    </code>

*/
#define IO_RC1_SetLow()           (_LATC1 = 0)
/**
  @Summary
    Toggles the GPIO pin, RC1, using LATC1.

  @Description
    Toggles the GPIO pin, RC1, using LATC1.

  @Preconditions
    The RC1 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RC1
    IO_RC1_Toggle();
    </code>

*/
#define IO_RC1_Toggle()           (_LATC1 ^= 1)
/**
  @Summary
    Reads the value of the GPIO pin, RC1.

  @Description
    Reads the value of the GPIO pin, RC1.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RC1
    postValue = IO_RC1_GetValue();
    </code>

*/
#define IO_RC1_GetValue()         _RC1
/**
  @Summary
    Configures the GPIO pin, RC1, as an input.

  @Description
    Configures the GPIO pin, RC1, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RC1 as an input
    IO_RC1_SetDigitalInput();
    </code>

*/
#define IO_RC1_SetDigitalInput()  (_TRISC1 = 1)
/**
  @Summary
    Configures the GPIO pin, RC1, as an output.

  @Description
    Configures the GPIO pin, RC1, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RC1 as an output
    IO_RC1_SetDigitalOutput();
    </code>

*/
#define IO_RC1_SetDigitalOutput() (_TRISC1 = 0)
/**
  @Summary
    Sets the GPIO pin, RC2, high using LATC2.

  @Description
    Sets the GPIO pin, RC2, high using LATC2.

  @Preconditions
    The RC2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RC2 high (1)
    IO_RC2_SetHigh();
    </code>

*/
#define IO_RC2_SetHigh()          (_LATC2 = 1)
/**
  @Summary
    Sets the GPIO pin, RC2, low using LATC2.

  @Description
    Sets the GPIO pin, RC2, low using LATC2.

  @Preconditions
    The RC2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RC2 low (0)
    IO_RC2_SetLow();
    </code>

*/
#define IO_RC2_SetLow()           (_LATC2 = 0)
/**
  @Summary
    Toggles the GPIO pin, RC2, using LATC2.

  @Description
    Toggles the GPIO pin, RC2, using LATC2.

  @Preconditions
    The RC2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RC2
    IO_RC2_Toggle();
    </code>

*/
#define IO_RC2_Toggle()           (_LATC2 ^= 1)
/**
  @Summary
    Reads the value of the GPIO pin, RC2.

  @Description
    Reads the value of the GPIO pin, RC2.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RC2
    postValue = IO_RC2_GetValue();
    </code>

*/
#define IO_RC2_GetValue()         _RC2
/**
  @Summary
    Configures the GPIO pin, RC2, as an input.

  @Description
    Configures the GPIO pin, RC2, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RC2 as an input
    IO_RC2_SetDigitalInput();
    </code>

*/
#define IO_RC2_SetDigitalInput()  (_TRISC2 = 1)
/**
  @Summary
    Configures the GPIO pin, RC2, as an output.

  @Description
    Configures the GPIO pin, RC2, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RC2 as an output
    IO_RC2_SetDigitalOutput();
    </code>

*/
#define IO_RC2_SetDigitalOutput() (_TRISC2 = 0)
/**
  @Summary
    Sets the GPIO pin, RD10, high using LATD10.

  @Description
    Sets the GPIO pin, RD10, high using LATD10.

  @Preconditions
    The RD10 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RD10 high (1)
    EEPROM_WP_SetHigh();
    </code>

*/
#define EEPROM_WP_SetHigh()          (_LATD10 = 1)
/**
  @Summary
    Sets the GPIO pin, RD10, low using LATD10.

  @Description
    Sets the GPIO pin, RD10, low using LATD10.

  @Preconditions
    The RD10 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RD10 low (0)
    EEPROM_WP_SetLow();
    </code>

*/
#define EEPROM_WP_SetLow()           (_LATD10 = 0)
/**
  @Summary
    Toggles the GPIO pin, RD10, using LATD10.

  @Description
    Toggles the GPIO pin, RD10, using LATD10.

  @Preconditions
    The RD10 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RD10
    EEPROM_WP_Toggle();
    </code>

*/
#define EEPROM_WP_Toggle()           (_LATD10 ^= 1)
/**
  @Summary
    Reads the value of the GPIO pin, RD10.

  @Description
    Reads the value of the GPIO pin, RD10.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RD10
    postValue = EEPROM_WP_GetValue();
    </code>

*/
#define EEPROM_WP_GetValue()         _RD10
/**
  @Summary
    Configures the GPIO pin, RD10, as an input.

  @Description
    Configures the GPIO pin, RD10, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RD10 as an input
    EEPROM_WP_SetDigitalInput();
    </code>

*/
#define EEPROM_WP_SetDigitalInput()  (_TRISD10 = 1)
/**
  @Summary
    Configures the GPIO pin, RD10, as an output.

  @Description
    Configures the GPIO pin, RD10, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RD10 as an output
    EEPROM_WP_SetDigitalOutput();
    </code>

*/
#define EEPROM_WP_SetDigitalOutput() (_TRISD10 = 0)
/**
  @Summary
    Sets the GPIO pin, RD12, high using LATD12.

  @Description
    Sets the GPIO pin, RD12, high using LATD12.

  @Preconditions
    The RD12 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RD12 high (1)
    ETH_INT_SetHigh();
    </code>

*/
#define ETH_INT_SetHigh()          (_LATD12 = 1)
/**
  @Summary
    Sets the GPIO pin, RD12, low using LATD12.

  @Description
    Sets the GPIO pin, RD12, low using LATD12.

  @Preconditions
    The RD12 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RD12 low (0)
    ETH_INT_SetLow();
    </code>

*/
#define ETH_INT_SetLow()           (_LATD12 = 0)
/**
  @Summary
    Toggles the GPIO pin, RD12, using LATD12.

  @Description
    Toggles the GPIO pin, RD12, using LATD12.

  @Preconditions
    The RD12 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RD12
    ETH_INT_Toggle();
    </code>

*/
#define ETH_INT_Toggle()           (_LATD12 ^= 1)
/**
  @Summary
    Reads the value of the GPIO pin, RD12.

  @Description
    Reads the value of the GPIO pin, RD12.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RD12
    postValue = ETH_INT_GetValue();
    </code>

*/
#define ETH_INT_GetValue()         _RD12
/**
  @Summary
    Configures the GPIO pin, RD12, as an input.

  @Description
    Configures the GPIO pin, RD12, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RD12 as an input
    ETH_INT_SetDigitalInput();
    </code>

*/
#define ETH_INT_SetDigitalInput()  (_TRISD12 = 1)
/**
  @Summary
    Configures the GPIO pin, RD12, as an output.

  @Description
    Configures the GPIO pin, RD12, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RD12 as an output
    ETH_INT_SetDigitalOutput();
    </code>

*/
#define ETH_INT_SetDigitalOutput() (_TRISD12 = 0)
/**
  @Summary
    Sets the GPIO pin, RD13, high using LATD13.

  @Description
    Sets the GPIO pin, RD13, high using LATD13.

  @Preconditions
    The RD13 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RD13 high (1)
    SDI1_SetHigh();
    </code>

*/
#define SDI1_SetHigh()          (_LATD13 = 1)
/**
  @Summary
    Sets the GPIO pin, RD13, low using LATD13.

  @Description
    Sets the GPIO pin, RD13, low using LATD13.

  @Preconditions
    The RD13 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RD13 low (0)
    SDI1_SetLow();
    </code>

*/
#define SDI1_SetLow()           (_LATD13 = 0)
/**
  @Summary
    Toggles the GPIO pin, RD13, using LATD13.

  @Description
    Toggles the GPIO pin, RD13, using LATD13.

  @Preconditions
    The RD13 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RD13
    SDI1_Toggle();
    </code>

*/
#define SDI1_Toggle()           (_LATD13 ^= 1)
/**
  @Summary
    Reads the value of the GPIO pin, RD13.

  @Description
    Reads the value of the GPIO pin, RD13.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RD13
    postValue = SDI1_GetValue();
    </code>

*/
#define SDI1_GetValue()         _RD13
/**
  @Summary
    Configures the GPIO pin, RD13, as an input.

  @Description
    Configures the GPIO pin, RD13, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RD13 as an input
    SDI1_SetDigitalInput();
    </code>

*/
#define SDI1_SetDigitalInput()  (_TRISD13 = 1)
/**
  @Summary
    Configures the GPIO pin, RD13, as an output.

  @Description
    Configures the GPIO pin, RD13, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RD13 as an output
    SDI1_SetDigitalOutput();
    </code>

*/
#define SDI1_SetDigitalOutput() (_TRISD13 = 0)
/**
  @Summary
    Sets the GPIO pin, RD15, high using LATD15.

  @Description
    Sets the GPIO pin, RD15, high using LATD15.

  @Preconditions
    The RD15 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RD15 high (1)
    SPEAKER_SetHigh();
    </code>

*/
#define SPEAKER_SetHigh()          (_LATD15 = 1)
/**
  @Summary
    Sets the GPIO pin, RD15, low using LATD15.

  @Description
    Sets the GPIO pin, RD15, low using LATD15.

  @Preconditions
    The RD15 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RD15 low (0)
    SPEAKER_SetLow();
    </code>

*/
#define SPEAKER_SetLow()           (_LATD15 = 0)
/**
  @Summary
    Toggles the GPIO pin, RD15, using LATD15.

  @Description
    Toggles the GPIO pin, RD15, using LATD15.

  @Preconditions
    The RD15 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RD15
    SPEAKER_Toggle();
    </code>

*/
#define SPEAKER_Toggle()           (_LATD15 ^= 1)
/**
  @Summary
    Reads the value of the GPIO pin, RD15.

  @Description
    Reads the value of the GPIO pin, RD15.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RD15
    postValue = SPEAKER_GetValue();
    </code>

*/
#define SPEAKER_GetValue()         _RD15
/**
  @Summary
    Configures the GPIO pin, RD15, as an input.

  @Description
    Configures the GPIO pin, RD15, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RD15 as an input
    SPEAKER_SetDigitalInput();
    </code>

*/
#define SPEAKER_SetDigitalInput()  (_TRISD15 = 1)
/**
  @Summary
    Configures the GPIO pin, RD15, as an output.

  @Description
    Configures the GPIO pin, RD15, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RD15 as an output
    SPEAKER_SetDigitalOutput();
    </code>

*/
#define SPEAKER_SetDigitalOutput() (_TRISD15 = 0)
/**
  @Summary
    Sets the GPIO pin, RD2, high using LATD2.

  @Description
    Sets the GPIO pin, RD2, high using LATD2.

  @Preconditions
    The RD2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RD2 high (1)
    ETH_CS_SetHigh();
    </code>

*/
#define ETH_CS_SetHigh()          (_LATD2 = 1)
/**
  @Summary
    Sets the GPIO pin, RD2, low using LATD2.

  @Description
    Sets the GPIO pin, RD2, low using LATD2.

  @Preconditions
    The RD2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RD2 low (0)
    ETH_CS_SetLow();
    </code>

*/
#define ETH_CS_SetLow()           (_LATD2 = 0)
/**
  @Summary
    Toggles the GPIO pin, RD2, using LATD2.

  @Description
    Toggles the GPIO pin, RD2, using LATD2.

  @Preconditions
    The RD2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RD2
    ETH_CS_Toggle();
    </code>

*/
#define ETH_CS_Toggle()           (_LATD2 ^= 1)
/**
  @Summary
    Reads the value of the GPIO pin, RD2.

  @Description
    Reads the value of the GPIO pin, RD2.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RD2
    postValue = ETH_CS_GetValue();
    </code>

*/
#define ETH_CS_GetValue()         _RD2
/**
  @Summary
    Configures the GPIO pin, RD2, as an input.

  @Description
    Configures the GPIO pin, RD2, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RD2 as an input
    ETH_CS_SetDigitalInput();
    </code>

*/
#define ETH_CS_SetDigitalInput()  (_TRISD2 = 1)
/**
  @Summary
    Configures the GPIO pin, RD2, as an output.

  @Description
    Configures the GPIO pin, RD2, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RD2 as an output
    ETH_CS_SetDigitalOutput();
    </code>

*/
#define ETH_CS_SetDigitalOutput() (_TRISD2 = 0)
/**
  @Summary
    Sets the GPIO pin, RD3, high using LATD3.

  @Description
    Sets the GPIO pin, RD3, high using LATD3.

  @Preconditions
    The RD3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RD3 high (1)
    ETH_RST_SetHigh();
    </code>

*/
#define ETH_RST_SetHigh()          (_LATD3 = 1)
/**
  @Summary
    Sets the GPIO pin, RD3, low using LATD3.

  @Description
    Sets the GPIO pin, RD3, low using LATD3.

  @Preconditions
    The RD3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RD3 low (0)
    ETH_RST_SetLow();
    </code>

*/
#define ETH_RST_SetLow()           (_LATD3 = 0)
/**
  @Summary
    Toggles the GPIO pin, RD3, using LATD3.

  @Description
    Toggles the GPIO pin, RD3, using LATD3.

  @Preconditions
    The RD3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RD3
    ETH_RST_Toggle();
    </code>

*/
#define ETH_RST_Toggle()           (_LATD3 ^= 1)
/**
  @Summary
    Reads the value of the GPIO pin, RD3.

  @Description
    Reads the value of the GPIO pin, RD3.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RD3
    postValue = ETH_RST_GetValue();
    </code>

*/
#define ETH_RST_GetValue()         _RD3
/**
  @Summary
    Configures the GPIO pin, RD3, as an input.

  @Description
    Configures the GPIO pin, RD3, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RD3 as an input
    ETH_RST_SetDigitalInput();
    </code>

*/
#define ETH_RST_SetDigitalInput()  (_TRISD3 = 1)
/**
  @Summary
    Configures the GPIO pin, RD3, as an output.

  @Description
    Configures the GPIO pin, RD3, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RD3 as an output
    ETH_RST_SetDigitalOutput();
    </code>

*/
#define ETH_RST_SetDigitalOutput() (_TRISD3 = 0)
/**
  @Summary
    Sets the GPIO pin, RD4, high using LATD4.

  @Description
    Sets the GPIO pin, RD4, high using LATD4.

  @Preconditions
    The RD4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RD4 high (1)
    SDO1_SetHigh();
    </code>

*/
#define SDO1_SetHigh()          (_LATD4 = 1)
/**
  @Summary
    Sets the GPIO pin, RD4, low using LATD4.

  @Description
    Sets the GPIO pin, RD4, low using LATD4.

  @Preconditions
    The RD4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RD4 low (0)
    SDO1_SetLow();
    </code>

*/
#define SDO1_SetLow()           (_LATD4 = 0)
/**
  @Summary
    Toggles the GPIO pin, RD4, using LATD4.

  @Description
    Toggles the GPIO pin, RD4, using LATD4.

  @Preconditions
    The RD4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RD4
    SDO1_Toggle();
    </code>

*/
#define SDO1_Toggle()           (_LATD4 ^= 1)
/**
  @Summary
    Reads the value of the GPIO pin, RD4.

  @Description
    Reads the value of the GPIO pin, RD4.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RD4
    postValue = SDO1_GetValue();
    </code>

*/
#define SDO1_GetValue()         _RD4
/**
  @Summary
    Configures the GPIO pin, RD4, as an input.

  @Description
    Configures the GPIO pin, RD4, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RD4 as an input
    SDO1_SetDigitalInput();
    </code>

*/
#define SDO1_SetDigitalInput()  (_TRISD4 = 1)
/**
  @Summary
    Configures the GPIO pin, RD4, as an output.

  @Description
    Configures the GPIO pin, RD4, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RD4 as an output
    SDO1_SetDigitalOutput();
    </code>

*/
#define SDO1_SetDigitalOutput() (_TRISD4 = 0)
/**
  @Summary
    Sets the GPIO pin, RF0, high using LATF0.

  @Description
    Sets the GPIO pin, RF0, high using LATF0.

  @Preconditions
    The RF0 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RF0 high (1)
    SCK1_SetHigh();
    </code>

*/
#define SCK1_SetHigh()          (_LATF0 = 1)
/**
  @Summary
    Sets the GPIO pin, RF0, low using LATF0.

  @Description
    Sets the GPIO pin, RF0, low using LATF0.

  @Preconditions
    The RF0 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RF0 low (0)
    SCK1_SetLow();
    </code>

*/
#define SCK1_SetLow()           (_LATF0 = 0)
/**
  @Summary
    Toggles the GPIO pin, RF0, using LATF0.

  @Description
    Toggles the GPIO pin, RF0, using LATF0.

  @Preconditions
    The RF0 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RF0
    SCK1_Toggle();
    </code>

*/
#define SCK1_Toggle()           (_LATF0 ^= 1)
/**
  @Summary
    Reads the value of the GPIO pin, RF0.

  @Description
    Reads the value of the GPIO pin, RF0.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RF0
    postValue = SCK1_GetValue();
    </code>

*/
#define SCK1_GetValue()         _RF0
/**
  @Summary
    Configures the GPIO pin, RF0, as an input.

  @Description
    Configures the GPIO pin, RF0, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RF0 as an input
    SCK1_SetDigitalInput();
    </code>

*/
#define SCK1_SetDigitalInput()  (_TRISF0 = 1)
/**
  @Summary
    Configures the GPIO pin, RF0, as an output.

  @Description
    Configures the GPIO pin, RF0, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RF0 as an output
    SCK1_SetDigitalOutput();
    </code>

*/
#define SCK1_SetDigitalOutput() (_TRISF0 = 0)
/**
  @Summary
    Sets the GPIO pin, RF2, high using LATF2.

  @Description
    Sets the GPIO pin, RF2, high using LATF2.

  @Preconditions
    The RF2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RF2 high (1)
    RD_BLUE_SetHigh();
    </code>

*/
#define RD_BLUE_SetHigh()          (_LATF2 = 1)
/**
  @Summary
    Sets the GPIO pin, RF2, low using LATF2.

  @Description
    Sets the GPIO pin, RF2, low using LATF2.

  @Preconditions
    The RF2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RF2 low (0)
    RD_BLUE_SetLow();
    </code>

*/
#define RD_BLUE_SetLow()           (_LATF2 = 0)
/**
  @Summary
    Toggles the GPIO pin, RF2, using LATF2.

  @Description
    Toggles the GPIO pin, RF2, using LATF2.

  @Preconditions
    The RF2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RF2
    RD_BLUE_Toggle();
    </code>

*/
#define RD_BLUE_Toggle()           (_LATF2 ^= 1)
/**
  @Summary
    Reads the value of the GPIO pin, RF2.

  @Description
    Reads the value of the GPIO pin, RF2.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RF2
    postValue = RD_BLUE_GetValue();
    </code>

*/
#define RD_BLUE_GetValue()         _RF2
/**
  @Summary
    Configures the GPIO pin, RF2, as an input.

  @Description
    Configures the GPIO pin, RF2, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RF2 as an input
    RD_BLUE_SetDigitalInput();
    </code>

*/
#define RD_BLUE_SetDigitalInput()  (_TRISF2 = 1)
/**
  @Summary
    Configures the GPIO pin, RF2, as an output.

  @Description
    Configures the GPIO pin, RF2, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RF2 as an output
    RD_BLUE_SetDigitalOutput();
    </code>

*/
#define RD_BLUE_SetDigitalOutput() (_TRISF2 = 0)
/**
  @Summary
    Sets the GPIO pin, RF3, high using LATF3.

  @Description
    Sets the GPIO pin, RF3, high using LATF3.

  @Preconditions
    The RF3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RF3 high (1)
    RD_RED_SetHigh();
    </code>

*/
#define RD_RED_SetHigh()          (_LATF3 = 1)
/**
  @Summary
    Sets the GPIO pin, RF3, low using LATF3.

  @Description
    Sets the GPIO pin, RF3, low using LATF3.

  @Preconditions
    The RF3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RF3 low (0)
    RD_RED_SetLow();
    </code>

*/
#define RD_RED_SetLow()           (_LATF3 = 0)
/**
  @Summary
    Toggles the GPIO pin, RF3, using LATF3.

  @Description
    Toggles the GPIO pin, RF3, using LATF3.

  @Preconditions
    The RF3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RF3
    RD_RED_Toggle();
    </code>

*/
#define RD_RED_Toggle()           (_LATF3 ^= 1)
/**
  @Summary
    Reads the value of the GPIO pin, RF3.

  @Description
    Reads the value of the GPIO pin, RF3.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RF3
    postValue = RD_RED_GetValue();
    </code>

*/
#define RD_RED_GetValue()         _RF3
/**
  @Summary
    Configures the GPIO pin, RF3, as an input.

  @Description
    Configures the GPIO pin, RF3, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RF3 as an input
    RD_RED_SetDigitalInput();
    </code>

*/
#define RD_RED_SetDigitalInput()  (_TRISF3 = 1)
/**
  @Summary
    Configures the GPIO pin, RF3, as an output.

  @Description
    Configures the GPIO pin, RF3, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RF3 as an output
    RD_RED_SetDigitalOutput();
    </code>

*/
#define RD_RED_SetDigitalOutput() (_TRISF3 = 0)
/**
  @Summary
    Sets the GPIO pin, RG15, high using LATG15.

  @Description
    Sets the GPIO pin, RG15, high using LATG15.

  @Preconditions
    The RG15 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RG15 high (1)
    RELAY_SetHigh();
    </code>

*/
#define RELAY_SetHigh()          (_LATG15 = 1)
/**
  @Summary
    Sets the GPIO pin, RG15, low using LATG15.

  @Description
    Sets the GPIO pin, RG15, low using LATG15.

  @Preconditions
    The RG15 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RG15 low (0)
    RELAY_SetLow();
    </code>

*/
#define RELAY_SetLow()           (_LATG15 = 0)
/**
  @Summary
    Toggles the GPIO pin, RG15, using LATG15.

  @Description
    Toggles the GPIO pin, RG15, using LATG15.

  @Preconditions
    The RG15 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RG15
    RELAY_Toggle();
    </code>

*/
#define RELAY_Toggle()           (_LATG15 ^= 1)
/**
  @Summary
    Reads the value of the GPIO pin, RG15.

  @Description
    Reads the value of the GPIO pin, RG15.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RG15
    postValue = RELAY_GetValue();
    </code>

*/
#define RELAY_GetValue()         _RG15
/**
  @Summary
    Configures the GPIO pin, RG15, as an input.

  @Description
    Configures the GPIO pin, RG15, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RG15 as an input
    RELAY_SetDigitalInput();
    </code>

*/
#define RELAY_SetDigitalInput()  (_TRISG15 = 1)
/**
  @Summary
    Configures the GPIO pin, RG15, as an output.

  @Description
    Configures the GPIO pin, RG15, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RG15 as an output
    RELAY_SetDigitalOutput();
    </code>

*/
#define RELAY_SetDigitalOutput() (_TRISG15 = 0)

/**
    Section: Function Prototypes
*/
/**
  @Summary
    Configures the pin settings of the dsPIC33EP512MU810
    The peripheral pin select, PPS, configuration is also handled by this manager.

  @Description
    This is the generated manager file for the PIC24 / dsPIC33 / PIC32MM MCUs device.  This manager
    configures the pins direction, initial state, analog setting.
    The peripheral pin select, PPS, configuration is also handled by this manager.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    void SYSTEM_Initialize(void)
    {
        // Other initializers are called from this function
        PIN_MANAGER_Initialize();
    }
    </code>

*/
void PIN_MANAGER_Initialize (void);



#endif

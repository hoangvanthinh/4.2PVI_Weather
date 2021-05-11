/* Microchip Technology Inc. and its subsidiaries.  You may use this software 
 * and any derivatives exclusively with Microchip products. 
 * 
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS".  NO WARRANTIES, WHETHER 
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED 
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A 
 * PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION 
 * WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION. 
 *
 * IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
 * INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
 * WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS 
 * BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE.  TO THE 
 * FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS 
 * IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF 
 * ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE 
 * TERMS. 
 */

/* 
 * File:   
 * Author: 
 * Comments:
 * Revision history: 
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef XC_USER_H
#define	XC_USER_H

#include <xc.h>

#include "SES.h" // include processor files - each processor file is guarded.  



#define ADD_START_SETUP 1000
#define ADD_BEGIN_ID_TEMPERATURE (ADD_START_SETUP + 100)
#define VAL_STATUS_EEPROM_YET   111
//#define MAC6 Parameter42.IP[3]

union data{
    int8_t val[2];
    int16_t val16;
};
extern union data Setup_timeout;
typedef struct
{
    uint8_t IP[4];
    uint8_t MAC[6];
    uint8_t SubnetMask[4];
    uint8_t Gateway[4];
    uint8_t DNS[4];
    
    uint8_t *NumofMeter;    
//    Multiple_Meter *Meter[5];
//    uint8_t Meter_Series[10];
//    uint8_t Meter_EN_Connect[10];
//    uint8_t Meter_SID[10];
            
}Mysetup;

typedef struct
{
    UINT16 HW_Version[4];
    UINT16 SW_Version[4];
}Device_Git;

extern Device_Git Device_Version;

extern Mysetup Parameter42;

extern uint8_t counter_life;
extern  uint8_t W_IP[4], W_MAC[6],W_SubnetMask[4], W_Gateway[4], W_PRIMARY_DNS[4], W_numMeter;
//extern Multiple_Meter W_Meter[5];
extern uint8_t test, val_w, test2, test3;

extern UINT8 Status_Save_Erom;

void READ_I42_Setup(void);
void WRITE_MY_Setup(void);

void Modbus_RTU_Slave_Add_Setup(void);
void Check_Save_DataSetup(void);
void Information_Device(void);

// TODO Insert appropriate #include <>

// TODO Insert C++ class definitions if appropriate

// TODO Insert declarations

// Comment a function and leverage automatic documentation with slash star star
/**
    <p><b>Function prototype:</b></p>
  
    <p><b>Summary:</b></p>

    <p><b>Description:</b></p>

    <p><b>Precondition:</b></p>

    <p><b>Parameters:</b></p>

    <p><b>Returns:</b></p>

    <p><b>Example:</b></p>
    <code>
 
    </code>

    <p><b>Remarks:</b></p>
 */
// TODO Insert declarations or function prototypes (right here) to leverage 
// live documentation

#ifdef	__cplusplus
extern "C" {
#endif /* __cplusplus */

    // TODO If C++ is being used, regular C code needs function names to have C 
    // linkage so the functions can be used by the c code. 

#ifdef	__cplusplus
}
#endif /* __cplusplus */

#endif	/* XC_HEADER_TEMPLATE_H */


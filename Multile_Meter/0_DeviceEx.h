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
#ifndef XC_HEADER_PRA_H
#define	XC_HEADER_PRA_H

#include <stdio.h>
#include <stdlib.h>
#include <xc.h> // include processor files - each processor file is guarded.  
#include "1_SELEC_MFM384.h"
#include "2_SELEC_EM368C.h"
#include "3_Schneider_PM2120.h"
#include "4_SELEC_MFM374.h"
#include "5_TENSE_EM_07K.h"
#include "6_MIKRO_DPM380_415AD.h"
#include "7_MITSU_ME96SSRA_MB.h"

#define MM_Connected    1
#define MM_Disconnected 0

typedef struct
{
    
    INT32 *V12, *V23, *V31, *V_LL_Avg;
    INT32 *V1N, *V2N, *V3N, *V_LN_Avg;
    INT32 *I1, *I2, *I3, *I_Avg, *I_N, *I_G;
    INT32 *P1, *P2, *P3, *P_TOTAL;
    INT32 *Q1, *Q2, *Q3, *Q_TOTAL;
    INT32 *S1, *S2, *S3, *S_TOTAL;
    INT32 *PF1, *PF2, *PF3, *PF_Avg;
    INT32 *F_Hz;
    
    INT32 *EP;// Delivered + 4
    INT32 *EQ; // +4
    INT32 *ES; // +4
    
    INT32 *P_MAX, *P_MIN;
    INT32 *Q_MAX, *Q_MIN;
    INT32 *S_MAX;
    
    UINT16 *T[3];
    UINT16 *Status;
    UINT16 *THD_I1, *THD_I2, *THD_I3;
    UINT16 *THD_IN, *THD_IG;

    UINT16 *THD_U1N, *THD_U2N, *THD_U3N;
    UINT16 *THD_U12, *THD_U23, *THD_U31;
    UINT16 *THD_ULL, *THD_ULN;
    
    UINT16 *Harmonics_VAB[15];
    UINT16 *Harmonics_VBC[15];
    UINT16 *Harmonics_VCA[15];

    UINT16 *Harmonics_VAN[15];
    UINT16 *Harmonics_VBN[15];
    UINT16 *Harmonics_VCN[15];
    
    UINT16 *Harmonics_IA[15];
    UINT16 *Harmonics_IB[15];
    UINT16 *Harmonics_IC[15];

         
} SES42_Prameter;


typedef void (*GetData)(uint8_t);

typedef struct 
{
    uint16_t REGsAdd;
    uint16_t NumberREGs;
    uint16_t Pointer;

}Meter_Frame;

typedef struct
{
    uint8_t ID;
    uint8_t Series;            
    uint8_t Func;
    uint8_t Num_Frame;
    Meter_Frame Fr[15];
    uint8_t Allow_EN;
    uint16_t SID;
}Meter_Setup;

typedef struct
{
    Meter_Setup Setup;
    uint16_t Data_Reg_Meters[350];       
    GetData GetDataMeter;       
    int8_t Status;
} Multiple_Meter;

enum Meter{
    Noname,
    SELEC_MFM384,
    SELEC_EM368C,
    SCHNEIDER_PM2120,
    SELEC_MFM374,
    TENSE_EM07,
    MIKRO_DPM380_415AD, 
    MITSU_ME96SSRA_MB
};


extern SES42_Prameter  SES42[10];
extern Multiple_Meter Meters[10];
extern Meter_Setup 
        Selec_MFM384, 
        Selec_MFM374,
        Selec_EM368C, 
        Tense_EM_07K,
        Mikro_DPM380_415AD,
        Schneider_METSEPM2120,
        Mitsu_ME96SSRA_MB;

float INT32_to_Float(INT32 a);
INT32 Float_to_INT32(float f);
INT32 Float32_to_INT32(INT32 A);
INT32 sum_INT32(INT32 a, INT32 b, INT32 c);
extern void (*MultipleMeter_update_42SES)(uint8_t ID);

const char* GetMeterName(enum Meter meter);
void Meters_10_Init(void);


#define HOLDING_REG_SIZE_M        350
#define INPUT_REG_SIZE_M          350
#define Max_Number_METER 10
extern uint8_t NumberofMeter;

//extern WORD  INPUT_REG_SES[INPUT_REG_SIZE_M];
//extern WORD  HOLDING_REG_SES[HOLDING_REG_SIZE_M];
extern UINT16  SES_INPUTREG[Max_Number_METER][INPUT_REG_SIZE_M];

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


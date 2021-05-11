#include "../SES.h"
static union
{
    int8_t val[4];
    int32_t val32;
    int16_t val16[2];
} VA, Vin;
static INT32 Cvdata_u16to_Float(UINT16 val)
{
    static float tmp;
    tmp = (float)val/100.0;
    Vin.val32 = *(INT32*)&tmp;  
    VA.val16[0] = Vin.val16[1];
    VA.val16[1] = Vin.val16[0];
    return VA.val32;
}
static INT32 Cvdata_DPM380_415AD(UINT16 val1, UINT16 val2)
{
    static float tmp;
    Vin.val16[0] = val2;
    Vin.val16[1] = val1;
    tmp = (float)Vin.val32/10;
    Vin.val32 = *(INT32*)&tmp;  
    VA.val16[0] = Vin.val16[1];
    VA.val16[1] = Vin.val16[0];
    return VA.val32;
}
static INT32 Cvdata_DPM380_415AD_I(UINT16 val1, UINT16 val2)
{
    static float tmp;
    Vin.val16[0] = val2;
    Vin.val16[1] = val1;
    tmp = (float)Vin.val32/1000.00;
    Vin.val32 = *(INT32*)&tmp;  
    VA.val16[0] = Vin.val16[1];
    VA.val16[1] = Vin.val16[0];
    return VA.val32;
}
static INT32 Cvdata_DPM380_415AD_PF(UINT16 val1, UINT16 val2)
{
    static float tmp;
    Vin.val16[0] = val2;
    Vin.val16[1] = val1;
    tmp = (float)Vin.val32/1000.00;
    Vin.val32 = *(INT32*)&tmp;  
    VA.val16[0] = Vin.val16[1];
    VA.val16[1] = Vin.val16[0];
    return VA.val32;
}
void MIKRO_DPM380_415AD_Init(void)
{
    Mikro_DPM380_415AD.Func = MB_FC_READ_HOLD_REGISTERS;
    Mikro_DPM380_415AD.Num_Frame = 1;
    Mikro_DPM380_415AD.Fr[0].REGsAdd = 4000;
    Mikro_DPM380_415AD.Fr[0].NumberREGs = 95;
    Mikro_DPM380_415AD.Fr[0].Pointer  = 0;
    
}
void GetDataMeter_MIKRO_DPM380_415AD(uint8_t ID)
{
    *SES42[ID].V1N = Cvdata_DPM380_415AD(Meters[ID].Data_Reg_Meters[34], Meters[ID].Data_Reg_Meters[35]);//((((INT32)Meters[ID].Data_Meters[34] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[35]);
    *SES42[ID].V2N = Cvdata_DPM380_415AD(Meters[ID].Data_Reg_Meters[36], Meters[ID].Data_Reg_Meters[37]);//((((INT32)Meters[ID].Data_Meters[36] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[37]);
    *SES42[ID].V3N = Cvdata_DPM380_415AD(Meters[ID].Data_Reg_Meters[38], Meters[ID].Data_Reg_Meters[39]);//((((INT32)Meters[ID].Data_Meters[38] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[39]);
    *SES42[ID].V_LN_Avg = 0;
    
    *SES42[ID].V12 = Cvdata_DPM380_415AD(Meters[ID].Data_Reg_Meters[28], Meters[ID].Data_Reg_Meters[29]);//((((INT32)Meters[ID].Data_Meters[28] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[29]);
    *SES42[ID].V23 = Cvdata_DPM380_415AD(Meters[ID].Data_Reg_Meters[30], Meters[ID].Data_Reg_Meters[31]);//((((INT32)Meters[ID].Data_Meters[30] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[31]);
    *SES42[ID].V31 = Cvdata_DPM380_415AD(Meters[ID].Data_Reg_Meters[32], Meters[ID].Data_Reg_Meters[33]);//((((INT32)Meters[ID].Data_Meters[32] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[33]);
    *SES42[ID].V_LL_Avg = 0;
    
    *SES42[ID].I1 = Cvdata_DPM380_415AD_I(Meters[ID].Data_Reg_Meters[20], Meters[ID].Data_Reg_Meters[21]);//((((INT32)Meters[ID].Data_Meters[20] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[21]);
    *SES42[ID].I2 = Cvdata_DPM380_415AD_I(Meters[ID].Data_Reg_Meters[22], Meters[ID].Data_Reg_Meters[23]);//((((INT32)Meters[ID].Data_Meters[22] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[23]);
    *SES42[ID].I3 = Cvdata_DPM380_415AD_I(Meters[ID].Data_Reg_Meters[24], Meters[ID].Data_Reg_Meters[25]);//((((INT32)Meters[ID].Data_Meters[24] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[25]);
    *SES42[ID].I_Avg = 0;
    *SES42[ID].I_N = Cvdata_DPM380_415AD_I(Meters[ID].Data_Reg_Meters[26], Meters[ID].Data_Reg_Meters[27]);//*P42.I1 + *P42.I2 + *P42.I3;
            
    *SES42[ID].P1 = Cvdata_DPM380_415AD(Meters[ID].Data_Reg_Meters[40], Meters[ID].Data_Reg_Meters[41]);;//((((INT32)Meters[ID].Data_Meters[40] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[41]);
    *SES42[ID].P2 = Cvdata_DPM380_415AD(Meters[ID].Data_Reg_Meters[42], Meters[ID].Data_Reg_Meters[43]);//((((INT32)Meters[ID].Data_Meters[42] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[43]);
    *SES42[ID].P3 = Cvdata_DPM380_415AD(Meters[ID].Data_Reg_Meters[44], Meters[ID].Data_Reg_Meters[45]);//((((INT32)Meters[ID].Data_Meters[44] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[45]);
    
    *SES42[ID].Q1 = Cvdata_DPM380_415AD(Meters[ID].Data_Reg_Meters[52], Meters[ID].Data_Reg_Meters[53]);//((((INT32)Meters[ID].Data_Meters[52] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[53]);
    *SES42[ID].Q2 = Cvdata_DPM380_415AD(Meters[ID].Data_Reg_Meters[54], Meters[ID].Data_Reg_Meters[55]);//((((INT32)Meters[ID].Data_Meters[54] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[55]);
    *SES42[ID].Q3 = Cvdata_DPM380_415AD(Meters[ID].Data_Reg_Meters[56], Meters[ID].Data_Reg_Meters[57]);//((((INT32)Meters[ID].Data_Meters[56] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[57]);    
    
    *SES42[ID].S1 = Cvdata_DPM380_415AD(Meters[ID].Data_Reg_Meters[46], Meters[ID].Data_Reg_Meters[47]);//((((INT32)Meters[ID].Data_Meters[46] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[47]);
    *SES42[ID].S2 = Cvdata_DPM380_415AD(Meters[ID].Data_Reg_Meters[48], Meters[ID].Data_Reg_Meters[49]);//((((INT32)Meters[ID].Data_Meters[48] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[49]);
    *SES42[ID].S3 = Cvdata_DPM380_415AD(Meters[ID].Data_Reg_Meters[50], Meters[ID].Data_Reg_Meters[51]);//((((INT32)Meters[ID].Data_Meters[50] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[51]);     
    
    *SES42[ID].P_TOTAL = Cvdata_DPM380_415AD(Meters[ID].Data_Reg_Meters[64], Meters[ID].Data_Reg_Meters[65]);//((((INT32)Meters[ID].Data_Meters[64] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[65]);
    *SES42[ID].Q_TOTAL = Cvdata_DPM380_415AD(Meters[ID].Data_Reg_Meters[58], Meters[ID].Data_Reg_Meters[59]);//((((INT32)Meters[ID].Data_Meters[58] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[59]);
    *SES42[ID].S_TOTAL = Cvdata_DPM380_415AD(Meters[ID].Data_Reg_Meters[70], Meters[ID].Data_Reg_Meters[71]);//((((INT32)Meters[ID].Data_Meters[70] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[71]); 
    
    *SES42[ID].PF1 = Cvdata_DPM380_415AD_PF(0,Meters[ID].Data_Reg_Meters[89]);
    *SES42[ID].PF2 = Cvdata_DPM380_415AD_PF(0,Meters[ID].Data_Reg_Meters[91]);
    *SES42[ID].PF3 = Cvdata_DPM380_415AD_PF(0,Meters[ID].Data_Reg_Meters[93]); // Cvdata_u16to_Float(Meters[ID].Data_Meters[93]);//
    *SES42[ID].PF_Avg = Cvdata_DPM380_415AD_PF(0,Meters[ID].Data_Reg_Meters[95]);
    
    *SES42[ID].F_Hz = Cvdata_u16to_Float(Meters[ID].Data_Reg_Meters[19]);//(INT32)Meters[ID].Data_Meters[19];
    
    *SES42[ID].EP = Cvdata_DPM380_415AD(Meters[ID].Data_Reg_Meters[0], Meters[ID].Data_Reg_Meters[1]);//((((INT32)Meters[ID].Data_Meters[0] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[1]);; 
    *SES42[ID].EQ = Cvdata_DPM380_415AD(Meters[ID].Data_Reg_Meters[2], Meters[ID].Data_Reg_Meters[3]);//((((INT32)Meters[ID].Data_Meters[2] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[3]);; 
    *SES42[ID].ES = Cvdata_DPM380_415AD(Meters[ID].Data_Reg_Meters[6], Meters[ID].Data_Reg_Meters[7]);//((((INT32)Meters[ID].Data_Meters[6] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[7]);; 
    
    *SES42[ID].P_MAX = 0; 
    *SES42[ID].P_MIN = 0; 

    *SES42[ID].Q_MAX = 0; 
    *SES42[ID].Q_MIN = 0;    
    
    *SES42[ID].S_MAX = 0;
    
    
    static int s;
    for (s = 0; s < 27; s++)
        *SES42[ID].T[s] = temperature27[s];
    
    *SES42[ID].THD_I1 =  Meters[ID].Data_Reg_Meters[82];
    *SES42[ID].THD_I2 =  Meters[ID].Data_Reg_Meters[83];
    *SES42[ID].THD_I3 =  Meters[ID].Data_Reg_Meters[84];
  
    *SES42[ID].THD_U1N =  Meters[ID].Data_Reg_Meters[85];
    *SES42[ID].THD_U2N =  Meters[ID].Data_Reg_Meters[86];
    *SES42[ID].THD_U3N =  Meters[ID].Data_Reg_Meters[87];   

}
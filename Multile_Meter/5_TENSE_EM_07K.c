#include "../SES.h"

static union {
    int8_t val[4];
    int32_t val32;
    int16_t val16[2];
} VA, Vin;

static INT32 Cvdata_EM07K(UINT16 val) {
    static float tmp;
    tmp = (float)val/10.0;
    Vin.val32 = *(INT32*) & tmp;
    VA.val16[0] = Vin.val16[1];
    VA.val16[1] = Vin.val16[0];
    return VA.val32;
}
static INT32 Cvdata_EM07K_I(UINT16 val) {
    static float tmp;
    tmp = (float)val/100.0;
    Vin.val32 = *(INT32*) & tmp;
    VA.val16[0] = Vin.val16[1];
    VA.val16[1] = Vin.val16[0];
    return VA.val32;
}
void TENSE_EM07_Init(void) {
    //Selec_MFM374.ID = 1;
    Tense_EM_07K.Func = MB_FC_READ_HOLD_REGISTERS;
    Tense_EM_07K.Num_Frame = 1;
    Tense_EM_07K.Fr[0].REGsAdd = 4000;
    Tense_EM_07K.Fr[0].NumberREGs = 41;
    Tense_EM_07K.Fr[0].Pointer = 0;
}

void GetDataMeter_TENSE_EM07(uint8_t ID) {
    *SES42[ID].V1N = Cvdata_EM07K(Meters[ID].Data_Reg_Meters[2]);
    *SES42[ID].V2N = Cvdata_EM07K(Meters[ID].Data_Reg_Meters[3]);
    *SES42[ID].V3N = Cvdata_EM07K(Meters[ID].Data_Reg_Meters[4]);

    *SES42[ID].V_LN_Avg = 0;

    *SES42[ID].V12 = Cvdata_EM07K(Meters[ID].Data_Reg_Meters[14]);
    *SES42[ID].V23 = Cvdata_EM07K(Meters[ID].Data_Reg_Meters[15]);
    *SES42[ID].V31 = Cvdata_EM07K(Meters[ID].Data_Reg_Meters[16]);
    *SES42[ID].V_LL_Avg = 0;

    *SES42[ID].I1 = Cvdata_EM07K_I(Meters[ID].Data_Reg_Meters[26]);
    *SES42[ID].I2 = Cvdata_EM07K_I(Meters[ID].Data_Reg_Meters[27]);
    *SES42[ID].I3 = Cvdata_EM07K_I(Meters[ID].Data_Reg_Meters[28]);
    *SES42[ID].I_Avg = 0;
    *SES42[ID].I_N = sum_INT32(*SES42[ID].I1, *SES42[ID].I2, *SES42[ID].I3);

    //    *SES42[ID].P1 = ((((INT32)Meters[ID].Data_Meters[24] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[25]);
    //    *SES42[ID].P2 = ((((INT32)Meters[ID].Data_Meters[26] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[27]);
    //    *SES42[ID].P3 = ((((INT32)Meters[ID].Data_Meters[28] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[29]);
    //    
    //    *SES42[ID].Q1 = ((((INT32)Meters[ID].Data_Meters[30] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[31]);
    //    *SES42[ID].Q2 = ((((INT32)Meters[ID].Data_Meters[32] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[33]);
    //    *SES42[ID].Q3 = ((((INT32)Meters[ID].Data_Meters[34] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[35]);    
    //    
    //    *SES42[ID].S1 = ((((INT32)Meters[ID].Data_Meters[36] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[37]);
    //    *SES42[ID].S2 = ((((INT32)Meters[ID].Data_Meters[38] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[39]);
    //    *SES42[ID].S3 = ((((INT32)Meters[ID].Data_Meters[40] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[41]);     
    //    
    //    *SES42[ID].P_TOTAL = ((((INT32)Meters[ID].Data_Meters[42] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[43]);
    //    *SES42[ID].Q_TOTAL = ((((INT32)Meters[ID].Data_Meters[44] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[45]);
    //    *SES42[ID].S_TOTAL = ((((INT32)Meters[ID].Data_Meters[46] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[47]); 
    //    
    //    *SES42[ID].PF1 = ((((INT32)Meters[ID].Data_Meters[48] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[49]);
    //    *SES42[ID].PF2 = ((((INT32)Meters[ID].Data_Meters[50] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[51]);
    //    *SES42[ID].PF3 = ((((INT32)Meters[ID].Data_Meters[52] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[53]);    
    //    *SES42[ID].PF_Avg = ((((INT32)Meters[ID].Data_Meters[54] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[55]); 
    //    
    //    *SES42[ID].F_Hz = ((((INT32)Meters[ID].Data_Meters[56] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[57]); 
    //    
    //    *SES42[ID].EP = ((((INT32)Meters[ID].Data_Meters[58] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[59]); 
    //    *SES42[ID].EQ = ((((INT32)Meters[ID].Data_Meters[60] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[61]); 
    //    *SES42[ID].ES = ((((INT32)Meters[ID].Data_Meters[62] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[63]); 
    //    
    //    *SES42[ID].P_MAX = ((((INT32)Meters[ID].Data_Meters[64] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[65]); 
    //    *SES42[ID].P_MIN = ((((INT32)Meters[ID].Data_Meters[66] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[67]); 
    //
    //    *SES42[ID].Q_MAX = ((((INT32)Meters[ID].Data_Meters[68] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[69]); 
    //    *SES42[ID].Q_MIN = ((((INT32)Meters[ID].Data_Meters[70] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[71]);    
    //    
    //    *SES42[ID].S_MAX = ((((INT32)Meters[ID].Data_Meters[72] << 16)& 0xFFFF0000) | (INT32)Meters[ID].Data_Meters[73]);   

    static int s;
    for (s = 0; s < 27; s++)
        *SES42[ID].T[s] = temperature27[s];
}
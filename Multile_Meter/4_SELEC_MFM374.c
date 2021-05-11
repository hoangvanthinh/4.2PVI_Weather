
#include "../SES.h"

void SELEC_MFM374_Init(void) {
    //Selec_MFM374.ID = 1;
    Selec_MFM374.Func = MB_FC_READ_INPUT_REGISTER;
    Selec_MFM374.Num_Frame = 1;
    Selec_MFM374.Fr[0].REGsAdd = 0;
    Selec_MFM374.Fr[0].NumberREGs = 100;
    Selec_MFM374.Fr[0].Pointer = 0;
    
}

void GetDataMeter_SELEC_MFM374(uint8_t ID) {
    // BIG-ENDIAN 32 FLOAT
    *SES42[ID].V1N = ((((INT32) Meters[ID].Data_Reg_Meters[0] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[1]);

    *SES42[ID].V2N = ((((INT32) Meters[ID].Data_Reg_Meters[2] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[3]);
    *SES42[ID].V3N = ((((INT32) Meters[ID].Data_Reg_Meters[4] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[5]);
    *SES42[ID].V_LN_Avg = ((((INT32) Meters[ID].Data_Reg_Meters[6] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[7]);

    *SES42[ID].V12 = ((((INT32) Meters[ID].Data_Reg_Meters[8] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[9]);
    *SES42[ID].V23 = ((((INT32) Meters[ID].Data_Reg_Meters[10] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[11]);
    *SES42[ID].V31 = ((((INT32) Meters[ID].Data_Reg_Meters[12] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[13]);
    *SES42[ID].V_LL_Avg = ((((INT32) Meters[ID].Data_Reg_Meters[14] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[15]);

    *SES42[ID].I1 = ((((INT32) Meters[ID].Data_Reg_Meters[16] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[17]);
    *SES42[ID].I2 = ((((INT32) Meters[ID].Data_Reg_Meters[18] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[19]);
    *SES42[ID].I3 = ((((INT32) Meters[ID].Data_Reg_Meters[20] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[21]);
    *SES42[ID].I_Avg = ((((INT32) Meters[ID].Data_Reg_Meters[22] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[23]);
    *SES42[ID].I_N = sum_INT32(*SES42[ID].I1, *SES42[ID].I2, *SES42[ID].I3);

    *SES42[ID].P1 = ((((INT32) Meters[ID].Data_Reg_Meters[24] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[25]);
    *SES42[ID].P2 = ((((INT32) Meters[ID].Data_Reg_Meters[26] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[27]);
    *SES42[ID].P3 = ((((INT32) Meters[ID].Data_Reg_Meters[28] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[29]);

    *SES42[ID].Q1 = ((((INT32) Meters[ID].Data_Reg_Meters[30] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[31]);
    *SES42[ID].Q2 = ((((INT32) Meters[ID].Data_Reg_Meters[32] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[33]);
    *SES42[ID].Q3 = ((((INT32) Meters[ID].Data_Reg_Meters[34] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[35]);

    *SES42[ID].S1 = ((((INT32) Meters[ID].Data_Reg_Meters[36] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[37]);
    *SES42[ID].S2 = ((((INT32) Meters[ID].Data_Reg_Meters[38] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[39]);
    *SES42[ID].S3 = ((((INT32) Meters[ID].Data_Reg_Meters[40] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[41]);

    *SES42[ID].P_TOTAL = ((((INT32) Meters[ID].Data_Reg_Meters[42] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[43]);
    *SES42[ID].Q_TOTAL = ((((INT32) Meters[ID].Data_Reg_Meters[44] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[45]);
    *SES42[ID].S_TOTAL = ((((INT32) Meters[ID].Data_Reg_Meters[46] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[47]);

    *SES42[ID].PF1 = ((((INT32) Meters[ID].Data_Reg_Meters[48] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[49]);
    *SES42[ID].PF2 = ((((INT32) Meters[ID].Data_Reg_Meters[50] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[51]);
    *SES42[ID].PF3 = ((((INT32) Meters[ID].Data_Reg_Meters[52] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[53]);
    *SES42[ID].PF_Avg = ((((INT32) Meters[ID].Data_Reg_Meters[54] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[55]);

    *SES42[ID].F_Hz = ((((INT32) Meters[ID].Data_Reg_Meters[56] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[57]);

    *SES42[ID].EP = ((((INT32) Meters[ID].Data_Reg_Meters[58] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[59]);
    *SES42[ID].EQ = ((((INT32) Meters[ID].Data_Reg_Meters[60] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[61]);
    *SES42[ID].ES = ((((INT32) Meters[ID].Data_Reg_Meters[62] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[63]);

    *SES42[ID].P_MAX = ((((INT32) Meters[ID].Data_Reg_Meters[64] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[65]);
    *SES42[ID].P_MIN = ((((INT32) Meters[ID].Data_Reg_Meters[66] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[67]);

    *SES42[ID].Q_MAX = ((((INT32) Meters[ID].Data_Reg_Meters[68] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[69]);
    *SES42[ID].Q_MIN = ((((INT32) Meters[ID].Data_Reg_Meters[70] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[71]);

    *SES42[ID].S_MAX = ((((INT32) Meters[ID].Data_Reg_Meters[72] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[73]);
    static int s;
    for (s = 0; s < 27; s++)
        *SES42[ID].T[s] = temperature27[s];
}

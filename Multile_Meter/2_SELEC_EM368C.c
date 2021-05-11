
#include "../SES.h"

void SELEC_EM368C_Init(void) {
    //Selec_EM368C.ID = 1;
    Selec_EM368C.Func = MB_FC_READ_INPUT_REGISTER;
    Selec_EM368C.Num_Frame = 1;
    Selec_EM368C.Fr[0].REGsAdd = 0;
    Selec_EM368C.Fr[0].NumberREGs = 18;
    Selec_EM368C.Fr[0].Pointer = 0;
    

}

void GetDataMeter_SELEC_EM368C(uint8_t ID) {
    *SES42[ID].V1N = 0;
    *SES42[ID].V2N = 0;
    *SES42[ID].V3N = 0;
    *SES42[ID].V_LN_Avg = 0;

    *SES42[ID].V12 = 0;
    *SES42[ID].V23 = 0;
    *SES42[ID].V31 = 0;
    *SES42[ID].V_LL_Avg = 0;

    *SES42[ID].I1 = 0;
    *SES42[ID].I2 = 0;
    *SES42[ID].I3 = 0;
    *SES42[ID].I_Avg = 0;
    *SES42[ID].I_N = sum_INT32(*SES42[ID].I1, *SES42[ID].I2, *SES42[ID].I3);
    
    *SES42[ID].P1 = 0;
    *SES42[ID].P2 = 0;
    *SES42[ID].P3 = 0;

    *SES42[ID].Q1 = 0;
    *SES42[ID].Q2 = 0;
    *SES42[ID].Q3 = 0;

    *SES42[ID].S1 = 0;
    *SES42[ID].S2 = 0;
    *SES42[ID].S3 = 0;

    *SES42[ID].EP = ((((INT32) Meters[ID].Data_Reg_Meters[0] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[1]);
    *SES42[ID].ES = ((((INT32) Meters[ID].Data_Reg_Meters[2] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[3]);
    *SES42[ID].EQ = ((((INT32) Meters[ID].Data_Reg_Meters[4] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[5]);

    *SES42[ID].PF1 = ((((INT32) Meters[ID].Data_Reg_Meters[6] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[7]);
    *SES42[ID].PF2 = ((((INT32) Meters[ID].Data_Reg_Meters[8] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[9]);
    *SES42[ID].PF3 = ((((INT32) Meters[ID].Data_Reg_Meters[10] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[11]);
    *SES42[ID].PF_Avg = ((((INT32) Meters[ID].Data_Reg_Meters[12] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[13]);

    *SES42[ID].P_TOTAL = ((((INT32) Meters[ID].Data_Reg_Meters[14] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[15]);
    *SES42[ID].Q_TOTAL = ((((INT32) Meters[ID].Data_Reg_Meters[16] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[17]);
    *SES42[ID].S_TOTAL = 0;

    *SES42[ID].F_Hz = 0;

    *SES42[ID].P_MAX = 0;
    *SES42[ID].P_MIN = 0;

    *SES42[ID].Q_MAX = 0;
    *SES42[ID].Q_MIN = 0;

    *SES42[ID].S_MAX = 0;

    static int s;
    for (s = 0; s < 27; s++)
        *SES42[ID].T[s] = temperature27[s];
}
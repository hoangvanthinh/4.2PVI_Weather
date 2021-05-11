#include "../SES.h"

static union {
    int8_t val[4];
    int32_t val32;
    int16_t val16[2];
} VA, Vin;
static INT32 Cvdata_u16to_Float(UINT16 val)
{
    static float tmp;
    tmp = (float)val;
    Vin.val32 = *(INT32*)&tmp;  
//    VA.val16[0] = Vin.val16[1];
//    VA.val16[1] = Vin.val16[0];
//    return VA.val32;
    return Vin.val32;
}
static INT32 Cvdata_ME96SS_HL(UINT16 val1, UINT16 val2)
{
    static float tmp;
    Vin.val16[0] = (INT16)val2;
    Vin.val16[1] = (INT16)val1;
    tmp = (float)Vin.val32/10;
    Vin.val32 = *(INT32*)&tmp;  
    VA.val16[0] = Vin.val16[1];
    VA.val16[1] = Vin.val16[0];
    return VA.val32;
}

static INT32 Cvdata_ME96SS_PQS(UINT16 val1, UINT16 val2)
{
    static float tmp;
    Vin.val16[0] = val2;
    Vin.val16[1] = val1;
    if(Vin.val32 > 16383) Vin.val32 = Vin.val32 - 65535;

    tmp = (float)Vin.val32/10;
    Vin.val32 = *(INT32*)&tmp;  
    VA.val16[0] = Vin.val16[1];
    VA.val16[1] = Vin.val16[0];
    return VA.val32;
}
static INT32 Cvdata_ME96SS_I(UINT16 val1, UINT16 val2)
{
    static float tmp;
    Vin.val16[0] = val2;
    Vin.val16[1] = val1;
    tmp = (float)Vin.val32;
    Vin.val32 = *(INT32*)&tmp;  
    VA.val16[0] = Vin.val16[1];
    VA.val16[1] = Vin.val16[0];
    return VA.val32;
}
static INT32 Cvdata_ME96SS_PF(UINT16 val1, UINT16 val2)
{
    static float tmp;
    Vin.val16[0] = val2;
    Vin.val16[1] = val1;
    tmp = (float)Vin.val32/1000.0;
    Vin.val32 = *(INT32*)&tmp;  
    VA.val16[0] = Vin.val16[1];
    VA.val16[1] = Vin.val16[0];
    return VA.val32;
}
static INT32 Decode_PF(UINT16 val)
{
    INT32 pf;
    if(val > 1000)
        val = 0xFFFF - val;
    
    pf = Cvdata_ME96SS_PF(0,val);
    return pf;
}
//static INT32 Cvdata_ME96SS(UINT16 val) {
//    static float tmp;
//    tmp = (float) val;
//    Vin.val32 = *(INT32*) & tmp/10.00;
//    VA.val16[0] = Vin.val16[1];
//    VA.val16[1] = Vin.val16[0];
//    return VA.val32;
//}

void MITSU_ME96SSRA_MB_Init(void) {
    Mitsu_ME96SSRA_MB.Func = MB_FC_READ_HOLD_REGISTERS;
    Mitsu_ME96SSRA_MB.Num_Frame = 1;
    // UIPQS, PF
    Mitsu_ME96SSRA_MB.Fr[0].REGsAdd = 768;
    Mitsu_ME96SSRA_MB.Fr[0].NumberREGs = 38;
    Mitsu_ME96SSRA_MB.Fr[0].Pointer = 0;
    //THD V1N, V2N, V3N, Harmonics V1N, V2N, V3N
    Mitsu_ME96SSRA_MB.Fr[1].REGsAdd = 1792;
    Mitsu_ME96SSRA_MB.Fr[1].NumberREGs = 24;
    Mitsu_ME96SSRA_MB.Fr[1].Pointer = Mitsu_ME96SSRA_MB.Fr[0].Pointer + Mitsu_ME96SSRA_MB.Fr[0].NumberREGs;
    //THD V12, V23, Harmonics V12, V23
    Mitsu_ME96SSRA_MB.Fr[2].REGsAdd = 2048;
    Mitsu_ME96SSRA_MB.Fr[2].NumberREGs = 23;
    Mitsu_ME96SSRA_MB.Fr[2].Pointer = Mitsu_ME96SSRA_MB.Fr[1].Pointer + Mitsu_ME96SSRA_MB.Fr[1].NumberREGs; 
    //THD I1, I2, I3, IN, Harmonics I1 i2 i3
    Mitsu_ME96SSRA_MB.Fr[3].REGsAdd = 2304;
    Mitsu_ME96SSRA_MB.Fr[3].NumberREGs = 32;
    Mitsu_ME96SSRA_MB.Fr[3].Pointer = Mitsu_ME96SSRA_MB.Fr[2].Pointer + Mitsu_ME96SSRA_MB.Fr[2].NumberREGs; 
    //THD V1N, V2N, V3N, Harmonic V1N, 2N, 3N
    Mitsu_ME96SSRA_MB.Fr[4].REGsAdd = 2560;
    Mitsu_ME96SSRA_MB.Fr[4].NumberREGs = 21;
    Mitsu_ME96SSRA_MB.Fr[4].Pointer = Mitsu_ME96SSRA_MB.Fr[3].Pointer + Mitsu_ME96SSRA_MB.Fr[3].NumberREGs;   
    //THD V12, V23
    Mitsu_ME96SSRA_MB.Fr[5].REGsAdd = 2816;
    Mitsu_ME96SSRA_MB.Fr[5].NumberREGs = 20;
    Mitsu_ME96SSRA_MB.Fr[5].Pointer = Mitsu_ME96SSRA_MB.Fr[4].Pointer + Mitsu_ME96SSRA_MB.Fr[4].NumberREGs;
    
    //THD 123N
        Mitsu_ME96SSRA_MB.Fr[6].REGsAdd = 3072;
    Mitsu_ME96SSRA_MB.Fr[6].NumberREGs = 28;
    Mitsu_ME96SSRA_MB.Fr[6].Pointer = Mitsu_ME96SSRA_MB.Fr[5].Pointer + Mitsu_ME96SSRA_MB.Fr[5].NumberREGs;
    //
}


void GetDataMeter_MITSU_ME96SSRA_MB(uint8_t ID) {
    *SES42[ID].V1N = Cvdata_ME96SS_HL(0,Meters[ID].Data_Reg_Meters[14]);
    *SES42[ID].V2N = Cvdata_ME96SS_HL(0,Meters[ID].Data_Reg_Meters[15]);
    *SES42[ID].V3N = Cvdata_ME96SS_HL(0,Meters[ID].Data_Reg_Meters[16]);

    *SES42[ID].V_LN_Avg = 0;

    *SES42[ID].V12 = Cvdata_ME96SS_HL(0,Meters[ID].Data_Reg_Meters[10]);
    *SES42[ID].V23 = Cvdata_ME96SS_HL(0,Meters[ID].Data_Reg_Meters[11]);
    *SES42[ID].V31 = Cvdata_ME96SS_HL(0,Meters[ID].Data_Reg_Meters[12]);
    *SES42[ID].V_LL_Avg = 0;

    *SES42[ID].I1 = Cvdata_ME96SS_I(0,Meters[ID].Data_Reg_Meters[0]);
    *SES42[ID].I2 = Cvdata_ME96SS_I(0,Meters[ID].Data_Reg_Meters[1]);
    *SES42[ID].I3 = Cvdata_ME96SS_I(0,Meters[ID].Data_Reg_Meters[2]);
    *SES42[ID].I_Avg = 0;
    *SES42[ID].I_N = Cvdata_ME96SS_I(0,Meters[ID].Data_Reg_Meters[3]); //*P42.I1 + *P42.I2 + *P42.I3;

    *SES42[ID].P1 = Cvdata_ME96SS_PQS(0,Meters[ID].Data_Reg_Meters[23]);
    *SES42[ID].P2 = Cvdata_ME96SS_PQS(0,Meters[ID].Data_Reg_Meters[24]);
    *SES42[ID].P3 = Cvdata_ME96SS_PQS(0,Meters[ID].Data_Reg_Meters[25]);

    *SES42[ID].Q1 = Cvdata_ME96SS_PQS(0,Meters[ID].Data_Reg_Meters[31]);
    *SES42[ID].Q2 = Cvdata_ME96SS_PQS(0,Meters[ID].Data_Reg_Meters[32]);
    *SES42[ID].Q3 = Cvdata_ME96SS_PQS(0,Meters[ID].Data_Reg_Meters[33]);

    *SES42[ID].S1 = Cvdata_ME96SS_PQS(0,Meters[ID].Data_Reg_Meters[35]);
    *SES42[ID].S2 = Cvdata_ME96SS_PQS(0,Meters[ID].Data_Reg_Meters[36]);
    *SES42[ID].S3 = Cvdata_ME96SS_PQS(0,Meters[ID].Data_Reg_Meters[37]);

    *SES42[ID].P_TOTAL = Cvdata_ME96SS_PQS(0,Meters[ID].Data_Reg_Meters[26]);
    *SES42[ID].Q_TOTAL = Cvdata_ME96SS_PQS(0,Meters[ID].Data_Reg_Meters[34]);
    *SES42[ID].S_TOTAL = Cvdata_ME96SS_PQS(0,Meters[ID].Data_Reg_Meters[38]);


    *SES42[ID].PF1 = Decode_PF(Meters[ID].Data_Reg_Meters[18]);//Cvdata_ME96SS_PF(Meters[ID].Data_Meters[18],0);
    *SES42[ID].PF2 = Decode_PF(Meters[ID].Data_Reg_Meters[19]);
    *SES42[ID].PF3 = Decode_PF(Meters[ID].Data_Reg_Meters[20]);
    *SES42[ID].PF_Avg = Decode_PF(Meters[ID].Data_Reg_Meters[21]);

    *SES42[ID].F_Hz = Cvdata_ME96SS_HL(0,Meters[ID].Data_Reg_Meters[22]);


    static int s;
    for (s = 0; s < 27; s++)
        *SES42[ID].T[s] = temperature27[s];
}
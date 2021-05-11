
#include "../SES.h"
static INT16 Float32_to_INT16(UINT16 A, UINT16 B)
{
    float f;
    INT32 C;
    C = ((((INT32) B << 16)& 0xFFFF0000) | (((INT32)A) & 0x0000FFFF));
    f = INT32_to_Float(C);
    f *= 100;
//    f = 125.6;
//    printf("i1: %f\r",f);
    return (INT16)(f);
}
void Schneider_PM2120_Init(void) {
    //Schneider_METSEPM2120.ID = 1;
    Schneider_METSEPM2120.Func = MB_FC_READ_HOLD_REGISTERS;
    Schneider_METSEPM2120.Num_Frame = 11;
    //UIPQS
    Schneider_METSEPM2120.Fr[0].REGsAdd = 2998;
    Schneider_METSEPM2120.Fr[0].NumberREGs = 115;
    Schneider_METSEPM2120.Fr[0].Pointer = 0;
    //THD
    Schneider_METSEPM2120.Fr[1].REGsAdd = 21299;
    Schneider_METSEPM2120.Fr[1].NumberREGs = 40;
    Schneider_METSEPM2120.Fr[1].Pointer = Schneider_METSEPM2120.Fr[0].Pointer + Schneider_METSEPM2120.Fr[0].NumberREGs;
    //HARMONICS VAB
    Schneider_METSEPM2120.Fr[2].REGsAdd = 21711;
    Schneider_METSEPM2120.Fr[2].NumberREGs = 86;
    Schneider_METSEPM2120.Fr[2].Pointer = Schneider_METSEPM2120.Fr[1].Pointer + Schneider_METSEPM2120.Fr[1].NumberREGs;
//    HARMONICS VBC
    Schneider_METSEPM2120.Fr[3].REGsAdd = 22099;
    Schneider_METSEPM2120.Fr[3].NumberREGs = 86;
    Schneider_METSEPM2120.Fr[3].Pointer = Schneider_METSEPM2120.Fr[2].Pointer + Schneider_METSEPM2120.Fr[2].NumberREGs;
//     HARMONICS VCA
    Schneider_METSEPM2120.Fr[4].REGsAdd = 22487;
    Schneider_METSEPM2120.Fr[4].NumberREGs = 86; 
    Schneider_METSEPM2120.Fr[4].Pointer = Schneider_METSEPM2120.Fr[3].Pointer + Schneider_METSEPM2120.Fr[3].NumberREGs;
//    HARMONICS VAN
    Schneider_METSEPM2120.Fr[5].REGsAdd = 22875;
    Schneider_METSEPM2120.Fr[5].NumberREGs = 86; 
    Schneider_METSEPM2120.Fr[5].Pointer = Schneider_METSEPM2120.Fr[4].Pointer + Schneider_METSEPM2120.Fr[4].NumberREGs;
//    HARMONICS VBN
    Schneider_METSEPM2120.Fr[6].REGsAdd = 23263;
    Schneider_METSEPM2120.Fr[6].NumberREGs = 86;
    Schneider_METSEPM2120.Fr[6].Pointer = Schneider_METSEPM2120.Fr[5].Pointer + Schneider_METSEPM2120.Fr[5].NumberREGs;
//    HARMONICS VCN
    Schneider_METSEPM2120.Fr[7].REGsAdd = 23651;
    Schneider_METSEPM2120.Fr[7].NumberREGs = 86;
    Schneider_METSEPM2120.Fr[7].Pointer = Schneider_METSEPM2120.Fr[6].Pointer + Schneider_METSEPM2120.Fr[6].NumberREGs;
//    HARMONICS VIA
    Schneider_METSEPM2120.Fr[8].REGsAdd = 24427;
    Schneider_METSEPM2120.Fr[8].NumberREGs = 86;
    Schneider_METSEPM2120.Fr[8].Pointer = Schneider_METSEPM2120.Fr[7].Pointer + Schneider_METSEPM2120.Fr[7].NumberREGs;
//    HARMONICS VIB
    Schneider_METSEPM2120.Fr[9].REGsAdd = 24815;
    Schneider_METSEPM2120.Fr[9].NumberREGs = 86;
    Schneider_METSEPM2120.Fr[9].Pointer = Schneider_METSEPM2120.Fr[8].Pointer + Schneider_METSEPM2120.Fr[8].NumberREGs;
//    HARMONICS VIC
    Schneider_METSEPM2120.Fr[10].REGsAdd = 25203;
    Schneider_METSEPM2120.Fr[10].NumberREGs = 86;
    Schneider_METSEPM2120.Fr[10].Pointer = Schneider_METSEPM2120.Fr[9].Pointer + Schneider_METSEPM2120.Fr[9].NumberREGs;
   
}
static  INT32 Decode_PFvalue(INT32 PF)
{
    float pf;
    INT32 a;
    pf = INT32_to_Float(PF);
    if(pf > 1)
        pf = 2-pf;
    else if(pf < -1)
        pf = -2-pf;

    a = Float_to_INT32(pf);
    return a;
}
void GetDataMeter_SCHNEIDER_PM2120(uint8_t ID) {
    // LITTLE-ENDIAN 32 FLOAT
    *SES42[ID].I1 = ((((INT32) Meters[ID].Data_Reg_Meters[0] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[1]);
    *SES42[ID].I2 = ((((INT32) Meters[ID].Data_Reg_Meters[2] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[3]);
    *SES42[ID].I3 = ((((INT32) Meters[ID].Data_Reg_Meters[4] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[5]);
    *SES42[ID].I_N = ((((INT32) Meters[ID].Data_Reg_Meters[6] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[7]);
    *SES42[ID].I_G = ((((INT32) Meters[ID].Data_Reg_Meters[8] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[9]);
    *SES42[ID].I_Avg = ((((INT32) Meters[ID].Data_Reg_Meters[10] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[11]);

    *SES42[ID].V12 = ((((INT32) Meters[ID].Data_Reg_Meters[20] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[21]);
    *SES42[ID].V23 = ((((INT32) Meters[ID].Data_Reg_Meters[22] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[23]);
    *SES42[ID].V31 = ((((INT32) Meters[ID].Data_Reg_Meters[24] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[25]);
    *SES42[ID].V_LL_Avg = ((((INT32) Meters[ID].Data_Reg_Meters[26] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[27]);
    //=================================================================================================    
    *SES42[ID].V1N = ((((INT32) Meters[ID].Data_Reg_Meters[28] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[29]);
    *SES42[ID].V2N = ((((INT32) Meters[ID].Data_Reg_Meters[30] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[31]);
    *SES42[ID].V3N = ((((INT32) Meters[ID].Data_Reg_Meters[32] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[33]);
    *SES42[ID].V_LN_Avg = ((((INT32) Meters[ID].Data_Reg_Meters[36] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[37]);
    ///    
    
    *SES42[ID].P1 = ((((INT32) Meters[ID].Data_Reg_Meters[54] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[55]);
    *SES42[ID].P2 = ((((INT32) Meters[ID].Data_Reg_Meters[56] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[57]);
    *SES42[ID].P3 = ((((INT32) Meters[ID].Data_Reg_Meters[58] << 16)& 0xFFFF0000) |  (INT32) Meters[ID].Data_Reg_Meters[59]);
    *SES42[ID].P_TOTAL = ((((INT32) Meters[ID].Data_Reg_Meters[60] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[61]);

    *SES42[ID].Q1 = ((((INT32) Meters[ID].Data_Reg_Meters[62] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[63]);
    *SES42[ID].Q2 = ((((INT32) Meters[ID].Data_Reg_Meters[64] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[65]);
    *SES42[ID].Q3 = ((((INT32) Meters[ID].Data_Reg_Meters[66] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[67]);
    *SES42[ID].Q_TOTAL = ((((INT32) Meters[ID].Data_Reg_Meters[68] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[69]);

    *SES42[ID].S1 = ((((INT32) Meters[ID].Data_Reg_Meters[70] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[71]);
    *SES42[ID].S2 = ((((INT32) Meters[ID].Data_Reg_Meters[72] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[73]);
    *SES42[ID].S3 = ((((INT32) Meters[ID].Data_Reg_Meters[74] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[75]);
    *SES42[ID].S_TOTAL = ((((INT32) Meters[ID].Data_Reg_Meters[76] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[77]);


    
    *SES42[ID].PF1 = ((((INT32) Meters[ID].Data_Reg_Meters[78] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[79]);
    *SES42[ID].PF1 = Decode_PFvalue(*SES42[ID].PF1);
    
    *SES42[ID].PF2 = ((((INT32) Meters[ID].Data_Reg_Meters[80] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[81]);
    *SES42[ID].PF2 = Decode_PFvalue(*SES42[ID].PF2);
    
    *SES42[ID].PF3 = ((((INT32) Meters[ID].Data_Reg_Meters[82] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[83]);
    *SES42[ID].PF3 = Decode_PFvalue(*SES42[ID].PF3);
    
    *SES42[ID].PF_Avg = ((((INT32) Meters[ID].Data_Reg_Meters[84] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[85]);
    *SES42[ID].PF_Avg = Decode_PFvalue(*SES42[ID].PF_Avg);
    
    *SES42[ID].F_Hz = ((((INT32) Meters[ID].Data_Reg_Meters[110] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Reg_Meters[111]);
//    *SES42[ID].F_Hz = ((((INT32) Meters[ID].Data_Meters[115] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[116]);
    

    *SES42[ID].EP = 0;//((((INT32) Meters[ID].Data_Meters[115] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[116]);;
    *SES42[ID].EQ = 0;//((((INT32) Meters[ID].Data_Meters[117] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[118]);;
    *SES42[ID].ES = 0;//((((INT32) Meters[ID].Data_Meters[119] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[120]);;

    *SES42[ID].P_MAX = 0;
    *SES42[ID].P_MIN = 0;

    *SES42[ID].Q_MAX = 0;
    *SES42[ID].Q_MIN = 0;

    *SES42[ID].S_MAX = 0;

    static int s;
    for (s = 0; s < 27; s++)
        *SES42[ID].T[s] = temperature27[s];
    //==========================================================================
    
    *SES42[ID].THD_I1 = Float32_to_INT16( Meters[ID].Data_Reg_Meters[115],  Meters[ID].Data_Reg_Meters[116]);//((((INT32) Meters[ID].Data_Meters[115] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[116]);
    *SES42[ID].THD_I2 = Float32_to_INT16( Meters[ID].Data_Reg_Meters[117],  Meters[ID].Data_Reg_Meters[118]);//((((INT32) Meters[ID].Data_Meters[117] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[118]);
    *SES42[ID].THD_I3 = Float32_to_INT16( Meters[ID].Data_Reg_Meters[119],  Meters[ID].Data_Reg_Meters[120]);//((((INT32) Meters[ID].Data_Meters[118] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[120]);
    *SES42[ID].THD_IN = Float32_to_INT16( Meters[ID].Data_Reg_Meters[121],  Meters[ID].Data_Reg_Meters[122]);//((((INT32) Meters[ID].Data_Meters[115] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[116]);
    *SES42[ID].THD_IG = 0;//Float32_to_INT16( Meters[ID].Data_Meters[123],  Meters[ID].Data_Meters[124]);//((((INT32) Meters[ID].Data_Meters[117] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[118]);
   
    *SES42[ID].THD_U12 = Float32_to_INT16( Meters[ID].Data_Reg_Meters[137],  Meters[ID].Data_Reg_Meters[138]);//((((INT32) Meters[ID].Data_Meters[118] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[120]);
    *SES42[ID].THD_U23 = Float32_to_INT16( Meters[ID].Data_Reg_Meters[139],  Meters[ID].Data_Reg_Meters[140]);//((((INT32) Meters[ID].Data_Meters[118] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[120]);
    *SES42[ID].THD_U31 = Float32_to_INT16( Meters[ID].Data_Reg_Meters[141],  Meters[ID].Data_Reg_Meters[142]);//((((INT32) Meters[ID].Data_Meters[118] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[120]);
    *SES42[ID].THD_ULL = Float32_to_INT16( Meters[ID].Data_Reg_Meters[143],  Meters[ID].Data_Reg_Meters[144]);//((((INT32) Meters[ID].Data_Meters[118] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[120]);
    *SES42[ID].THD_U1N = Float32_to_INT16( Meters[ID].Data_Reg_Meters[145],  Meters[ID].Data_Reg_Meters[146]);//((((INT32) Meters[ID].Data_Meters[118] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[120]);
    *SES42[ID].THD_U2N = Float32_to_INT16( Meters[ID].Data_Reg_Meters[147],  Meters[ID].Data_Reg_Meters[148]);//((((INT32) Meters[ID].Data_Meters[118] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[120]);
    *SES42[ID].THD_U3N = Float32_to_INT16( Meters[ID].Data_Reg_Meters[149],  Meters[ID].Data_Reg_Meters[150]);//((((INT32) Meters[ID].Data_Meters[118] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[120]);
    *SES42[ID].THD_ULN = Float32_to_INT16( Meters[ID].Data_Reg_Meters[151],  Meters[ID].Data_Reg_Meters[152]);//((((INT32) Meters[ID].Data_Meters[118] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[120]);

    // HARMONICS VAB[15]
    for(s= 0;s < 15;s++)
    {
        *SES42[ID].Harmonics_VAB[s] = Float32_to_INT16( Meters[ID].Data_Reg_Meters[155 + s*6],  Meters[ID].Data_Reg_Meters[156 + s*6]);//((((INT32) Meters[ID].Data_Meters[118] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[120]);
    }
//     HARMONICS VBC[15]
    for(s= 0;s < 15;s++)
    {
        *SES42[ID].Harmonics_VBC[s] = Float32_to_INT16( Meters[ID].Data_Reg_Meters[241 + s*6],  Meters[ID].Data_Reg_Meters[242 + s*6]);//((((INT32) Meters[ID].Data_Meters[118] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[120]);
    }
//     HARMONICS VCA[15]
    for(s= 0;s < 15;s++)
    {
        *SES42[ID].Harmonics_VCA[s] = Float32_to_INT16( Meters[ID].Data_Reg_Meters[327 + s*6],  Meters[ID].Data_Reg_Meters[328 + s*6]);//((((INT32) Meters[ID].Data_Meters[118] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[120]);
    }    
    
    
    
    
//     HARMONICS VAN[15]
    for(s= 0;s < 15;s++)
    {
        *SES42[ID].Harmonics_VAN[s] = Float32_to_INT16( Meters[ID].Data_Reg_Meters[413 + s*6],  Meters[ID].Data_Reg_Meters[414 + s*6]);//((((INT32) Meters[ID].Data_Meters[118] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[120]);
    } 
//     HARMONICS VBN[15]
    for(s= 0;s < 15;s++)
    {
        *SES42[ID].Harmonics_VBN[s] = Float32_to_INT16( Meters[ID].Data_Reg_Meters[499 + s*6],  Meters[ID].Data_Reg_Meters[500 + s*6]);//((((INT32) Meters[ID].Data_Meters[118] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[120]);
    }    
//     HARMONICS VCN[15]
    for(s= 0;s < 15;s++)
    {
        *SES42[ID].Harmonics_VCN[s] = Float32_to_INT16( Meters[ID].Data_Reg_Meters[585 + s*6],  Meters[ID].Data_Reg_Meters[586 + s*6]);//((((INT32) Meters[ID].Data_Meters[118] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[120]);
    } 
    
//     HARMONICS VI1[15]
    for(s= 0;s < 15;s++)
    {
        *SES42[ID].Harmonics_IA[s] = Float32_to_INT16( Meters[ID].Data_Reg_Meters[671 + s*6],  Meters[ID].Data_Reg_Meters[672 + s*6]);//((((INT32) Meters[ID].Data_Meters[118] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[120]);
    }  
//     HARMONICS VI2[15]
    for(s= 0;s < 15;s++)
    {
        *SES42[ID].Harmonics_IB[s] = Float32_to_INT16( Meters[ID].Data_Reg_Meters[757 + s*6],  Meters[ID].Data_Reg_Meters[758 + s*6]);//((((INT32) Meters[ID].Data_Meters[118] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[120]);
    } 
//     HARMONICS VI3[15]
    for(s= 0;s < 15;s++)
    {
        *SES42[ID].Harmonics_IC[s] = Float32_to_INT16( Meters[ID].Data_Reg_Meters[843 + s*6],  Meters[ID].Data_Reg_Meters[844 + s*6]);//((((INT32) Meters[ID].Data_Meters[118] << 16)& 0xFFFF0000) | (INT32) Meters[ID].Data_Meters[120]);
    } 
    
}

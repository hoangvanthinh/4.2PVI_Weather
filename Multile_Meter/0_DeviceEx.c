//#include "SES.h"
#include "../SES.h"

SES42_Prameter SES42[10];
uint8_t NumberofMeter = 0;
Multiple_Meter Meters[10];
Meter_Setup
            Selec_MFM384,
            Selec_MFM374,
            Selec_EM368C,
            Tense_EM_07K,
            Mikro_DPM380_415AD,
            Schneider_METSEPM2120,
            Mitsu_ME96SSRA_MB;


void (*MultipleMeter_update_42SES)(uint8_t ID);

UINT16 SES_INPUTREG[Max_Number_METER][INPUT_REG_SIZE_M];// = {};

static union {
    int8_t val[4];
    int32_t val32;
    int16_t val16[2];
} VA, Vin;
float INT32_to_Float(INT32 a)
{
    float f;
    Vin.val32 = a;
    VA.val16[0] = Vin.val16[1];
    VA.val16[1] = Vin.val16[0];    
    f = *(float*)&VA.val32;
    return f;
}
INT32 Float_to_INT32(float f)
{
    INT32 A;
    A = *(INT32*)&f;
    Vin.val32 = A;
    VA.val16[0] = Vin.val16[1];
    VA.val16[1] = Vin.val16[0]; 
    A = VA.val32;
    
    return A;
}
INT32 Float32_to_INT32(INT32 A)
{
    float f;
    INT32 D;
  
    f = INT32_to_Float(A);

    
    D = (INT32)f;
    VA.val32 = D;
    Vin.val[0] = VA.val[2];
    Vin.val[1] = VA.val[3];
    Vin.val[2] = VA.val[0];
    Vin.val[3] = VA.val[1];
    D = Vin.val32;
    return D;
}
INT32 sum_INT32(INT32 a, INT32 b, INT32 c)
{
    INT32 A;
    float f1,f2,f3;
    f1 = INT32_to_Float(a);
    f2 = INT32_to_Float(b);
    f3 = INT32_to_Float(c);
    f1 = f1+f2+f3;
    
    A = *(INT32*)&f1;
    Vin.val32 = A;
    VA.val16[0] = Vin.val16[1];
    VA.val16[1] = Vin.val16[0]; 
    A = VA.val32;
    
    return A;
            
}
void DataInterface_SES42_to_Modbus(void) {
    static uint8_t m = 0;
    for (m = 0; m < NumberofMeter; m++) {
        int i = 0; // THANH GHI ??M
        SES42[m].V12 = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].V23 = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].V31 = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].V_LL_Avg = (INT32*) SES_INPUTREG[m] + i++;

        SES42[m].V1N = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].V2N = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].V3N = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].V_LN_Avg = (INT32*) SES_INPUTREG[m] + i++;

        SES42[m].I1 = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].I2 = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].I3 = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].I_N = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].I_G = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].I_Avg = (INT32*) SES_INPUTREG[m] + i++;

        SES42[m].P1 = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].P2 = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].P3 = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].P_TOTAL = (INT32*) SES_INPUTREG[m] + i++;

        SES42[m].Q1 = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].Q2 = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].Q3 = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].Q_TOTAL = (INT32*) SES_INPUTREG[m] + i++;

        SES42[m].S1 = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].S2 = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].S3 = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].S_TOTAL = (INT32*) SES_INPUTREG[m] + i++;

        SES42[m].PF1 = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].PF2 = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].PF3 = (INT32*) SES_INPUTREG[m] + i++;
        SES42[m].PF_Avg = (INT32*) SES_INPUTREG[m] + i++;

        SES42[m].F_Hz = (INT32*) SES_INPUTREG[m] + i++;

        // Energy
        SES42[m].EP = (INT32*) SES_INPUTREG[m] + i++;
        i++;
        i++;
        i++;
        SES42[m].EQ = (INT32*) SES_INPUTREG[m] + i++;
        i++;
        i++;
        i++;
        SES42[m].ES = (INT32*) SES_INPUTREG[m] + i++;
        i++;
        i++;
        i++;
        //====================== SID ===========================================
        SES_INPUTREG[m][86] = Meters[m].Setup.SID;
        //======================== T[3]=========================================
        static int a;
        for (a = 0; a < 3; a++) {
            SES42[m].T[a] = (UINT16*) (SES_INPUTREG[m] + 87 + a);
        }
        //====================== STATUS ========================================
        SES42[m].Status = (UINT16*) SES_INPUTREG[m] + 90;
        
        //====================== SID ===========================================
        SES_INPUTREG[m][199] = Meters[m].Setup.SID;
        //====================== THD ===========================================
        i = 200;
        SES42[m].THD_I1 = (UINT16*) SES_INPUTREG[m] + i++;
        SES42[m].THD_I2 = (UINT16*) SES_INPUTREG[m] + i++;
        SES42[m].THD_I3 = (UINT16*) SES_INPUTREG[m] + i++;
        SES42[m].THD_IN = (UINT16*) SES_INPUTREG[m] + i++;
        SES42[m].THD_IG = (UINT16*) SES_INPUTREG[m] + i++;
        
        SES42[m].THD_U12 = (UINT16*) SES_INPUTREG[m] + i++;
        SES42[m].THD_U23 = (UINT16*) SES_INPUTREG[m] + i++;
        SES42[m].THD_U31 = (UINT16*) SES_INPUTREG[m] + i++;
        SES42[m].THD_ULL = (UINT16*) SES_INPUTREG[m] + i++;
        
        SES42[m].THD_U1N = (UINT16*) SES_INPUTREG[m] + i++;
        SES42[m].THD_U2N = (UINT16*) SES_INPUTREG[m] + i++;
        SES42[m].THD_U3N = (UINT16*) SES_INPUTREG[m] + i++;
        SES42[m].THD_ULN = (UINT16*) SES_INPUTREG[m] + i++;
        //======================== Harmonic ====================================
        // I1-I2-I3
        for(a = 0;a < 15; a++)            
            SES42[m].Harmonics_IA[a] = (UINT16*) SES_INPUTREG[m] + i++;
        for(a = 0;a < 15; a++)            
            SES42[m].Harmonics_IB[a] = (UINT16*) SES_INPUTREG[m] + i++;
        for(a = 0;a < 15; a++)            
            SES42[m].Harmonics_IC[a] = (UINT16*) SES_INPUTREG[m] + i++;   
        
        // VAB-VBC-VCA       
        for(a = 0;a < 15; a++)            
            SES42[m].Harmonics_VAB[a] = (UINT16*) SES_INPUTREG[m] + i++;
        for(a = 0;a < 15; a++)            
            SES42[m].Harmonics_VBC[a] = (UINT16*) SES_INPUTREG[m] + i++;
        for(a = 0;a < 15; a++)            
            SES42[m].Harmonics_VCA[a] = (UINT16*) SES_INPUTREG[m] + i++;
        // VAN-VBN-VCN      
        for(a = 0;a < 15; a++)            
            SES42[m].Harmonics_VAN[a] = (UINT16*) SES_INPUTREG[m] + i++;
        for(a = 0;a < 15; a++)            
            SES42[m].Harmonics_VBN[a] = (UINT16*) SES_INPUTREG[m] + i++;
        for(a = 0;a < 15; a++)            
            SES42[m].Harmonics_VCN[a] = (UINT16*) SES_INPUTREG[m] + i++;                       
        //====================== SID ===========================================
        SES_INPUTREG[m][348] = Meters[m].Setup.SID;       
    }
}

void Meters_10_Init(void) {

    DataInterface_SES42_to_Modbus();
    
    static uint8_t m = 0, f = 0;
    for (m = 0; m < NumberofMeter; m++) {
        switch (Meters[m].Setup.Series) {
            case MITSU_ME96SSRA_MB:
                MITSU_ME96SSRA_MB_Init();
                Meters[m].Setup.Func = Mitsu_ME96SSRA_MB.Func;
                Meters[m].Setup.Num_Frame = Mitsu_ME96SSRA_MB.Num_Frame;
                for(f = 0;f<Meters[m].Setup.Num_Frame;f++)
                {
                    Meters[m].Setup.Fr[f].NumberREGs = Mitsu_ME96SSRA_MB.Fr[f].NumberREGs;
                    Meters[m].Setup.Fr[f].REGsAdd = Mitsu_ME96SSRA_MB.Fr[f].REGsAdd;
                    Meters[m].Setup.Fr[f].Pointer = Mitsu_ME96SSRA_MB.Fr[f].Pointer;
                }        
                Meters[m].GetDataMeter = &GetDataMeter_MITSU_ME96SSRA_MB;
                break;
            case MIKRO_DPM380_415AD:
                MIKRO_DPM380_415AD_Init();
                Meters[m].Setup.Func = Mikro_DPM380_415AD.Func;
                Meters[m].Setup.Num_Frame = Mikro_DPM380_415AD.Num_Frame;
                for(f = 0;f<Meters[m].Setup.Num_Frame;f++)
                {
                    Meters[m].Setup.Fr[f].NumberREGs = Mikro_DPM380_415AD.Fr[f].NumberREGs;
                    Meters[m].Setup.Fr[f].REGsAdd = Mikro_DPM380_415AD.Fr[f].REGsAdd;
                    Meters[m].Setup.Fr[f].Pointer = Mikro_DPM380_415AD.Fr[f].Pointer;
                }               
                Meters[m].GetDataMeter = &GetDataMeter_MIKRO_DPM380_415AD;
                break;
            case TENSE_EM07:
                TENSE_EM07_Init();
                Meters[m].Setup.Func = Tense_EM_07K.Func;
                Meters[m].Setup.Num_Frame = Tense_EM_07K.Num_Frame;
                for(f = 0;f<Meters[m].Setup.Num_Frame;f++)
                {
                    Meters[m].Setup.Fr[f].NumberREGs = Tense_EM_07K.Fr[f].NumberREGs;
                    Meters[m].Setup.Fr[f].REGsAdd = Tense_EM_07K.Fr[f].REGsAdd;
                    Meters[m].Setup.Fr[f].Pointer = Tense_EM_07K.Fr[f].Pointer;
                }
                Meters[m].GetDataMeter = &GetDataMeter_TENSE_EM07;

                break;

            case SELEC_MFM374:
                SELEC_MFM374_Init();
                Meters[m].Setup.Func = Selec_MFM374.Func;
                Meters[m].Setup.Num_Frame = Selec_MFM374.Num_Frame;
                for(f = 0;f<Meters[m].Setup.Num_Frame;f++)
                {
                    Meters[m].Setup.Fr[f].NumberREGs = Selec_MFM374.Fr[f].NumberREGs;
                    Meters[m].Setup.Fr[f].REGsAdd = Selec_MFM374.Fr[f].REGsAdd;
                    Meters[m].Setup.Fr[f].Pointer = Selec_MFM374.Fr[f].Pointer;
                }   
                Meters[m].GetDataMeter = &GetDataMeter_SELEC_MFM374;
                break;
            case SELEC_MFM384:
                SELEC_MFM384_Init();
                Meters[m].Setup.Func = Selec_MFM384.Func;
                Meters[m].Setup.Num_Frame = Selec_MFM384.Num_Frame;
                for(f = 0;f<Meters[m].Setup.Num_Frame;f++)
                {
                    Meters[m].Setup.Fr[f].NumberREGs = Selec_MFM384.Fr[f].NumberREGs;
                    Meters[m].Setup.Fr[f].REGsAdd = Selec_MFM384.Fr[f].REGsAdd;
                    Meters[m].Setup.Fr[f].Pointer = Selec_MFM384.Fr[f].Pointer;
                }
                Meters[m].GetDataMeter = &GetDataMeter_SELEC_MFM384;
                break;
            case SELEC_EM368C:
                SELEC_EM368C_Init();
                Meters[m].Setup.Func = Selec_EM368C.Func;
                Meters[m].Setup.Num_Frame = Selec_EM368C.Num_Frame;
                for(f = 0;f<Meters[m].Setup.Num_Frame;f++)
                {
                    Meters[m].Setup.Fr[f].NumberREGs = Selec_EM368C.Fr[f].NumberREGs;
                    Meters[m].Setup.Fr[f].REGsAdd = Selec_EM368C.Fr[f].REGsAdd;
                    Meters[m].Setup.Fr[f].Pointer = Selec_EM368C.Fr[f].Pointer;
                }      
                Meters[m].GetDataMeter = &GetDataMeter_SELEC_EM368C;
                break;
            case SCHNEIDER_PM2120:
                Schneider_PM2120_Init();
                Meters[m].Setup.Func = Schneider_METSEPM2120.Func;
                Meters[m].Setup.Num_Frame = Schneider_METSEPM2120.Num_Frame;
                for(f = 0;f < Meters[m].Setup.Num_Frame;f++)
                {
                    Meters[m].Setup.Fr[f].NumberREGs = Schneider_METSEPM2120.Fr[f].NumberREGs;
                    Meters[m].Setup.Fr[f].REGsAdd = Schneider_METSEPM2120.Fr[f].REGsAdd;
                    Meters[m].Setup.Fr[f].Pointer = Schneider_METSEPM2120.Fr[f].Pointer;
                }
                Meters[m].GetDataMeter = &GetDataMeter_SCHNEIDER_PM2120;
                break;

            default: // Meter 1
                SELEC_MFM384_Init();
                Meters[m].Setup.Func = Selec_MFM384.Func;
                Meters[m].Setup.Num_Frame = Selec_MFM384.Num_Frame;
                Meters[m].GetDataMeter = &GetDataMeter_SELEC_MFM384;
                break;
        }
    }

}

const char* GetMeterName(enum Meter meter) {
    switch (meter) {
        case Noname: return "0";
        case SELEC_MFM384: return "SELEC_MFM384";
        case SELEC_EM368C: return "SELEC_EM368C";
        case SCHNEIDER_PM2120: return "SCHNEIDER_PM2120";
        case SELEC_MFM374: return "SELEC_MFM374";
        case TENSE_EM07: return "TENSE_EM07";
        case MIKRO_DPM380_415AD: return "MIKRO_DPM380_415AD";
        case MITSU_ME96SSRA_MB: return "MITSU_ME96SSRA_MB";

        default:
            break;

            
    }
    return 0;
}
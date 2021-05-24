#include "SES.h"

union data Setup_timeout;

uint8_t counter_life = 0;
uint16_t SETUP_TIMEOUT = 0;

Device_Git Device_Version;

uint8_t W_IP[4], W_MAC[6], W_SubnetMask[4], W_Gateway[4], W_PRIMARY_DNS[4], W_numMeter; 
uint8_t W_Meter_Series[10];
UINT16 W_Meter_SID[10];
uint8_t W_En_ConnectID[10];

Mysetup Parameter42;
uint8_t test, val_w, test2, test3;

UINT8 Status_Save_Erom;

void READ_I42_Setup(void) {
 
}

void Check_Save_DataSetup(void) {
    if (SES_42.Coils.bits.b0 == 1) {

        SPEAKER_SetHigh();
        __delay_ms(200);
        W_IP[0] = SES_42.SETUP_REGS[16];
        W_IP[1] = SES_42.SETUP_REGS[17];
        W_IP[2] = SES_42.SETUP_REGS[18];
        W_IP[3] = SES_42.SETUP_REGS[19];

        W_SubnetMask[0] = SES_42.SETUP_REGS[20];
        W_SubnetMask[1] = SES_42.SETUP_REGS[21];
        W_SubnetMask[2] = SES_42.SETUP_REGS[22];
        W_SubnetMask[3] = SES_42.SETUP_REGS[23];

        W_Gateway[0] = SES_42.SETUP_REGS[24];
        W_Gateway[1] = SES_42.SETUP_REGS[25];
        W_Gateway[2] = SES_42.SETUP_REGS[26];
        W_Gateway[3] = SES_42.SETUP_REGS[27];

        W_PRIMARY_DNS[0] = SES_42.SETUP_REGS[28];
        W_PRIMARY_DNS[1] = SES_42.SETUP_REGS[29];
        W_PRIMARY_DNS[2] = SES_42.SETUP_REGS[30];
        W_PRIMARY_DNS[3] = SES_42.SETUP_REGS[31];

        W_numMeter = SES_42.SETUP_REGS[32];

        int n;
        for(n = 0;n<10;n++)
            W_Meter_Series[n] = SES_42.SETUP_REGS[33+n];

        for(n = 0;n<10;n++)
            W_En_ConnectID[n] = SES_42.SETUP_REGS[43+n];
        
        Setup_timeout.val16 = SES_42.SETUP_REGS[53];

        for(n = 0;n<10;n++)
            W_Meter_SID[n] = SES_42.SETUP_REGS[54+n];   
        //======================================================================
        WRITE_MY_Setup();
        SPEAKER_SetLow();
        SES_42.Coils.bits.b0 = 0;
        Reset();
    }
}

void WRITE_MY_Setup(void) {
    EEPROM_WP_SetLow();

    // Allow data save
    EEPROM3_WriteOneByte(ADD_START_SETUP, VAL_STATUS_EEPROM_YET);
    __delay_ms(10);
    EEPROM3_WriteBlock(ADD_START_SETUP + 1, W_MAC, 6);
    __delay_ms(10);   
    EEPROM3_WriteBlock(ADD_START_SETUP + 7, W_IP, 4);
    __delay_ms(10);
    EEPROM3_WriteBlock(ADD_START_SETUP + 11, W_SubnetMask, 4);
    __delay_ms(10);
    EEPROM3_WriteBlock(ADD_START_SETUP + 15, W_Gateway, 4);
    __delay_ms(10);
    EEPROM3_WriteBlock(ADD_START_SETUP + 19, W_PRIMARY_DNS, 4);
    __delay_ms(10);
    EEPROM3_WriteOneByte(ADD_START_SETUP + 23, W_numMeter);
    __delay_ms(10);


    //=============================23+1=============================================

    
    //===========================24+10==============================================
    EEPROM3_WriteBlock(ADD_START_SETUP + 34, W_En_ConnectID, 10);
    __delay_ms(10);
    
    //=========================== 34 + 10===============================================
    EEPROM3_WriteBlock(ADD_START_SETUP + 44, Setup_timeout.val, 2);
    __delay_ms(10);
    //============================ 44 + 2 ======================================

    //==========================================================================
    EEPROM_WP_SetHigh();
}

void Modbus_RTU_Slave_Add_Setup(void) {
    

    //==================== READ AND DISPALY ================================
    //        SES_42.SETUP_REGS[0] = Parameter42.MAC[0];
    //        SES_42.SETUP_REGS[1] = Parameter42.MAC[1];
    //        SES_42.SETUP_REGS[2] = Parameter42.MAC[2];
    //        SES_42.SETUP_REGS[3] = Parameter42.MAC[3];
    SES_42.SETUP_REGS[0] = MY_name_INTERFACE_L;
    SES_42.SETUP_REGS[1] = Device_Version.SW_Version[0];
    SES_42.SETUP_REGS[2] = Device_Version.SW_Version[1];
    SES_42.SETUP_REGS[3] = Device_Version.SW_Version[2];
    SES_42.SETUP_REGS[4] = Device_Version.SW_Version[3];
    
    SES_42.SETUP_REGS[16] = Parameter42.IP[0];
    SES_42.SETUP_REGS[17] = Parameter42.IP[1];
    SES_42.SETUP_REGS[18] = Parameter42.IP[2];
    SES_42.SETUP_REGS[19] = Parameter42.IP[3];

    SES_42.SETUP_REGS[20] = Parameter42.SubnetMask[0];
    SES_42.SETUP_REGS[21] = Parameter42.SubnetMask[1];
    SES_42.SETUP_REGS[22] = Parameter42.SubnetMask[2];
    SES_42.SETUP_REGS[23] = Parameter42.SubnetMask[3];

    SES_42.SETUP_REGS[24] = Parameter42.Gateway[0];
    SES_42.SETUP_REGS[25] = Parameter42.Gateway[1];
    SES_42.SETUP_REGS[26] = Parameter42.Gateway[2];
    SES_42.SETUP_REGS[27] = Parameter42.Gateway[3];

    SES_42.SETUP_REGS[28] = Parameter42.DNS[0];
    SES_42.SETUP_REGS[29] = Parameter42.DNS[1];
    SES_42.SETUP_REGS[30] = Parameter42.DNS[2];
    SES_42.SETUP_REGS[31] = Parameter42.DNS[3];
    //======================================================================
    SES_42.SETUP_REGS[32] = *Parameter42.NumofMeter;

    //==========================================================================
    int k;
    for(k=0;k<10;k++)
        SES_42.SETUP_REGS[43+k] = W_En_ConnectID[k];
    
    SES_42.SETUP_REGS[53] = Setup_timeout.val16;
    
    for(k=0;k<10;k++)
        SES_42.SETUP_REGS[54+k] = W_Meter_SID[k];   
    
    SES_42.Coils.bits.b0 = 0;
}

void Information_Device(void) {
 
    
}
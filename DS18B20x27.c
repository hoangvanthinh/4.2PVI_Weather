#include "SES.h"

#define Skip_ROM 0xCC
#define Convert_T 0x44
#define Read_scratchpad 0xBE
#define Read_ROM 0x33
#define Match_ROM 0x55

static uint16_t  TEMPER_PROCESS = 0;
uint8_t ID_TEMPER[27][8],ADD_Temp[8] = {0,0,0,0,0,0,0,0};
uint16_t temperature27[27] = {0,0,0,0,0,0,0,0,0,
                              0,0,0,0,0,0,0,0,0,
                              0,0,0,0,0,0,0,0,0};
static uint8_t Process_T = 0,Page = 1, ModeT=0;
//static uint8_t  Pin = 1;
static int16_t ds18b20_read(uint8_t Pin);
static void ds18b20_multi_read(uint8_t Pin, uint8_t *ID, uint16_t *Temper_Value);
static uint8_t onewire_reset(uint8_t Pin);
static void onewire_write(uint8_t Pin, uint8_t data);
static uint8_t onewire_read(uint8_t Pin);
static void output_low_select(uint8_t Pin);
static void output_high_select(uint8_t Pin);
static int16_t make16(uint8_t data0, uint8_t data1);
//static void Dispay_Temparature(uint16_t value, uint16_t Position);
static void Read_Temper(void);

void Process_Temperature(void){
    static char t = 0;
    t++;
    if(t > 2)
    {
        t = 0;
       Read_Temper();
    }
    
//    static int a;
//    for(a=0;a<27;a++)
//    {
//        SES_INPUTREG[0][85+a] = temperature27[a];
//    }
    

}
void Init_Temperaturex27(void){
    uint8_t i =0,j=0;
    Page = 1;
    ModeT = 0;
    Process_T = 0;

    EEPROM_WP_SetLow();
    __delay_ms(10);
    for(j = 0; j< 3; j++)
    {
        EEPROM3_ReadBlock(ADD_BEGIN_ID_TEMPERATURE + j*8,ID_TEMPER[j], 8 );
        __delay_ms(10);
    }
    EEPROM_WP_SetHigh();
//    ID_TEMPER[0][0] = 0x28;
//    ID_TEMPER[0][1] = 0x66;
//    ID_TEMPER[0][2] = 0xDE;
//    ID_TEMPER[0][3] = 0xC7;
//    ID_TEMPER[0][4] = 0x0B;
//    ID_TEMPER[0][5] = 0x00;
//    ID_TEMPER[0][6] = 0x00;
//    ID_TEMPER[0][7] = 0xED;
    
    for(i=1;i<=3;i++){
        if(onewire_reset(i)==0) {
            onewire_write(i,Skip_ROM);
            onewire_write(i,Convert_T);
            output_high_select(i);
        }
    }
}

static void Read_Temper(){   
    ds18b20_multi_read(1, ID_TEMPER[TEMPER_PROCESS],&temperature27[TEMPER_PROCESS]);
//    ds18b20_multi_read(2, ID_TEMPER[TEMPER_PROCESS+9],&temperature27[TEMPER_PROCESS+9]);
//    ds18b20_multi_read(3, ID_TEMPER[TEMPER_PROCESS+18],&temperature27[TEMPER_PROCESS+18]);
//    
    TEMPER_PROCESS++;//do 1 diem nhiet do thi tang 2 lan TEMPER_PROCESS

    if(TEMPER_PROCESS>8) TEMPER_PROCESS = 0;
//    printf("T1: %d\r", temperature27[0]);
//    printf("T2: %d\r", temperature27[1]);
//    printf("T3: %d\r", temperature27[2]);
}

static void ds18b20_multi_read(uint8_t Pin, uint8_t *ID, uint16_t *Temper_Value){
    uint8_t i =0,check = 0;
    if (onewire_reset(Pin)==0) {
        output_low_select(Pin);
        onewire_reset(Pin);
        onewire_write(Pin,Match_ROM);
        for(i=0;i<8;i++){
            onewire_write(Pin,*ID);
            if(*ID==0xFF) check++;
            ID++;
        }
        if(check==8) {
            check = 0;
            *Temper_Value = 0xFFFF;
        }
        else{
            *Temper_Value = (uint16_t)ds18b20_read(Pin);              
        }
    }
    if(onewire_reset(Pin)==0) {
       onewire_write(Pin,Skip_ROM);
       onewire_write(Pin,Convert_T);
       output_high_select(Pin);
    }   
}

static int16_t ds18b20_read(uint8_t Pin){
    uint8_t temp1, temp2;
    int16_t temp3, result;
    onewire_write(Pin, Read_scratchpad);            //Read scratchpad
    temp1 = onewire_read(Pin);
    temp2 = onewire_read(Pin);
    temp3 = make16(temp2,temp1);
    result = (int16_t)(temp3/16.0);
//    printf("T=%u",result);
    __delay_ms(20);
    return result;
}
static int16_t make16(uint8_t data0, uint8_t data1){
    int16_t result =0;
    result = data0<<8;
    result = result | data1;
    return result;
}

static uint8_t onewire_reset(uint8_t Pin){
    bool var = 0;
    switch(Pin){
        case 1: {
            ONE_WIRE_TRIS1= 0;
            ONE_WIRE_LPIN1 = 0;
            __delay_us(480);
            ONE_WIRE_TRIS1= 1;
            __delay_us(60);
            var = ONE_WIRE_PORT1;
            break;
        }
        case 2: {
            ONE_WIRE_TRIS2 = 0;
            ONE_WIRE_LPIN2 = 0;
            __delay_us(480);
            ONE_WIRE_TRIS2 = 1;
            __delay_us(60);
            var = ONE_WIRE_PORT2;                
            break;
        }
        case 3: {
            ONE_WIRE_TRIS3 = 0;
            ONE_WIRE_LPIN3 = 0;
            __delay_us(480);
            ONE_WIRE_TRIS3 = 1;
            __delay_us(60);
            var =  ONE_WIRE_PORT3;           
            break;
        }
        
        default : break;      
    }  
    if(var==0){
        __delay_us(420);
       return 0;
    }
    else{
        __delay_us(420);
       return 1;
    }    
}
static void onewire_write(uint8_t Pin, uint8_t data){
    uint8_t count=0;
    bool temp;
    switch(Pin){
        case 1: {
            for(count = 0; count < 8; ++count) {
                ONE_WIRE_TRIS1= 0;
                ONE_WIRE_LPIN1 = 0;
                __delay_us(2);       // pull 1-wire low to initiate write time-slot.      
                temp = data & 0x01;
                ONE_WIRE_LPIN1 = temp;
                __delay_us(60);               // wait until end of write slot.
                ONE_WIRE_TRIS1= 1; // set 1-wire high again,
                __delay_us(2);
                data >>=1;            
            }
            break;
        }
        case 2: {
            for(count = 0; count < 8; ++count) {
                ONE_WIRE_TRIS2 = 0;
                ONE_WIRE_LPIN2 = 0;
                __delay_us(2);       // pull 1-wire low to initiate write time-slot.      
                temp = data & 0x01;
                ONE_WIRE_LPIN2 = temp;
                __delay_us(60);               // wait until end of write slot.
                ONE_WIRE_TRIS2 = 1; // set 1-wire high again,
                __delay_us(2);
                data >>=1;            
            }            
            break;
        }
        case 3: {
            for(count = 0; count < 8; ++count) {
                ONE_WIRE_TRIS3 = 0;
                ONE_WIRE_LPIN3 = 0;
                __delay_us(2);       // pull 1-wire low to initiate write time-slot.      
                temp = data & 0x01;
                ONE_WIRE_LPIN3 = temp;
                __delay_us(60);               // wait until end of write slot.
                ONE_WIRE_TRIS3 = 1; // set 1-wire high again,
                __delay_us(2);
                data >>=1;            
            }            
            break;
        }
     
        default : break;
    }    
}
static uint8_t onewire_read(uint8_t Pin){
    static  uint8_t count,data; 
    switch(Pin){
        case 1: {
            for (count = 0; count < 8; ++count) {
                data >>=1;
                ONE_WIRE_TRIS1 = 0;
                ONE_WIRE_LPIN1 = 0;
                __delay_us(2);                // pull 1-wire low to initiate read time-slot.
                ONE_WIRE_TRIS1 = 1;   // now let 1-wire float high,
                __delay_us(8);               // let device state stabilise,      
                if(ONE_WIRE_PORT1==1){
                    data|=0x80;
                }
                __delay_us(120);              // wait until end of read slot.
            }            
            break;
        }
        case 2: {
            for (count = 0; count < 8; ++count) {
                data >>=1;
                ONE_WIRE_TRIS2 = 0;
                ONE_WIRE_LPIN2 = 0;
                __delay_us(2);                // pull 1-wire low to initiate read time-slot.
                ONE_WIRE_TRIS2 = 1;   // now let 1-wire float high,
                __delay_us(8);               // let device state stabilise,      
                if(ONE_WIRE_PORT2==1){
                    data|=0x80;
                }
                __delay_us(120);              // wait until end of read slot.
            }            
            break;
        }
        case 3: {
            for (count = 0; count < 8; ++count) {
                data >>=1;
                ONE_WIRE_TRIS3 = 0;
                ONE_WIRE_LPIN3 = 0;
                __delay_us(2);                // pull 1-wire low to initiate read time-slot.
                ONE_WIRE_TRIS3 = 1;   // now let 1-wire float high,
                __delay_us(8);               // let device state stabilise,      
                if(ONE_WIRE_PORT3==1){
                    data|=0x80;
                }
                __delay_us(120);              // wait until end of read slot.
            }            
            break;
        }
        
        default : break;
    }
    return data;    
}

static void output_low_select(uint8_t Pin){
    switch(Pin){
        case 1: {
            ONE_WIRE_TRIS1 = 0;
            ONE_WIRE_LPIN1 = 0;
            break;
        }
        case 2: {
            ONE_WIRE_TRIS2 = 0;
            ONE_WIRE_LPIN2 = 0;
            break;
        }
        case 3: {
            ONE_WIRE_TRIS3 = 0;
            ONE_WIRE_LPIN3 = 0;
            break;
        }

       
        default : break;   
    }
}
static void output_high_select(uint8_t Pin){
    switch(Pin){
        case 1: {
            ONE_WIRE_TRIS1 = 0;
            ONE_WIRE_LPIN1 = 1;
            break;
        }
        case 2: {
            ONE_WIRE_TRIS2 = 0;
            ONE_WIRE_LPIN2 = 1;
            break;
        }
        case 3: {
            ONE_WIRE_TRIS3 = 0;
            ONE_WIRE_LPIN3 = 1;
            break;
        }
               
        default : break;  
    }
}


// ModbusClientTCP.c

/*********************************************************************
 *
 *  ModBus Client Application
 *  Module for Microchip TCP/IP Stack
 *   -Implements an example ModBus client and should be used as a basis 
 *	  for creating new TCP client applications
 *	 -Reference: None.  Hopefully AN833 in the future.
 *
 *********************************************************************
 * FileName:        GenericTCPClient.c
 * Dependencies:    TCP, DNS, ARP, Tick
 * Processor:       PIC18, PIC24F, PIC24H, dsPIC30F, dsPIC33F, PIC32
 * Compiler:        Microchip C32 v1.05 or higher
 *					Microchip C30 v3.12 or higher
 *					Microchip C18 v3.30 or higher
 *					HI-TECH PICC-18 PRO 9.63PL2 or higher
 * Company:         Microchip Technology, Inc.
 *
 ********************************************************************/
//#define __MODBUS_C

#include "../SES.h"

static int8_t MAX_Query = 0;
static char bModbusClientInitialised = 0;
static MODBUS_CLIENT_STATE ModbusClientState = (MODBUS_CLIENT_STATE)MBCS_HOME;
static uint16_t Frame_len;
static uint32_t timeout;
static uint8_t query = 0;
//==============================================================================
//static uint8_t C_status_Modbus = 0;
//static uint8_t C_u8state;
//static uint8_t C_u8lastError;
static uint16_t C_u16InCnt, u16OutCnt, C_u16errCnt;
static uint8_t C_u8lastRec;
//static uint32_t C_u32time, C_u32timeOut, C_u32overTime;

static uint8_t  C_u8MBUnitID;                                        ///< Unit Identifier for individual unit-identification
static uint16_t C_u16MBTransactionID                      = 1;       ///< Transaction id for each transaction
static uint16_t C_u16MBProtocolID                         = 0;       ///< Constant
static uint16_t C_ku16MBResponseTimeout          = 2000;

//=========================================================================================
static MODBUS SES_Modbus;
static MODBUS_CLIENT_TELEGRAM Client_telegram[4];
static uint16_t C_au16data[16];
//WORD SES_INPUTREGS_3X[INPUTREG_SIZE];
//WORD SES_HOLDINGREGS_4X[HOLDINGREG_SIZE];

unsigned char fctsupported[] =
{
    MB_FC_READ_COILS,
    MB_FC_READ_DISCRETE_INPUT,
    MB_FC_READ_HOLD_REGISTERS,
    MB_FC_READ_INPUT_REGISTER,
    MB_FC_WRITE_COIL,
    MB_FC_WRITE_REGISTER,
    MB_FC_WRITE_MULTIPLE_COILS,
    MB_FC_WRITE_MULTIPLE_REGISTERS
};
//============================= APP config ================================
 APP_CONFIG AppConfig ;
static ROM uint8_t SerializedMACAddress[6] = {MY_DEFAULT_MAC_BYTE1, MY_DEFAULT_MAC_BYTE2, 
		MY_DEFAULT_MAC_BYTE3, MY_DEFAULT_MAC_BYTE4, MY_DEFAULT_MAC_BYTE5, MY_DEFAULT_MAC_BYTE6};

static void get_FC3(void);
static uint8_t SES_Modbus_validateAnswer(void);

static void InitAppConfig(void)
{
    memset((void *)&AppConfig, 0x00, sizeof(AppConfig));
	AppConfig.Flags.bInConfigMode = true ;
	memcpypgm2ram((void*)&AppConfig.MyMACAddr, (ROM void*)SerializedMACAddress, 
				sizeof(AppConfig.MyMACAddr));
#if defined STACK_USE_DHCP_CLIENT
     AppConfig.Flags.bIsDHCPEnabled = true;
     AppConfig.MyIPAddr.Val = 0;
     AppConfig.DefaultIPAddr.Val = AppConfig.MyIPAddr.Val;
     AppConfig.MyMask.Val = 0;
     AppConfig.DefaultMask.Val = AppConfig.MyMask.Val;
     AppConfig.MyGateway.Val = 0;
     AppConfig.PrimaryDNSServer.Val = 0;
     AppConfig.SecondaryDNSServer.Val = 0;
#else
	AppConfig.Flags.bIsDHCPEnabled = false ;
	AppConfig.MyIPAddr.Val = MY_DEFAULT_IP_ADDR_BYTE1 | MY_DEFAULT_IP_ADDR_BYTE2<<8ul 
					| MY_DEFAULT_IP_ADDR_BYTE3<<16ul | MY_DEFAULT_IP_ADDR_BYTE4<<24ul;
	AppConfig.DefaultIPAddr.Val = AppConfig.MyIPAddr.Val;
	AppConfig.MyMask.Val = MY_DEFAULT_MASK_BYTE1 | MY_DEFAULT_MASK_BYTE2<<8ul 
					| MY_DEFAULT_MASK_BYTE3<<16ul | MY_DEFAULT_MASK_BYTE4<<24ul;
	AppConfig.DefaultMask.Val = AppConfig.MyMask.Val;
	AppConfig.MyGateway.Val = MY_DEFAULT_GATE_BYTE1 | MY_DEFAULT_GATE_BYTE2<<8ul 
					| MY_DEFAULT_GATE_BYTE3<<16ul | MY_DEFAULT_GATE_BYTE4<<24ul;
	AppConfig.PrimaryDNSServer.Val = MY_DEFAULT_PRIMARY_DNS_BYTE1 | MY_DEFAULT_PRIMARY_DNS_BYTE2<<8ul  
					| MY_DEFAULT_PRIMARY_DNS_BYTE3<<16ul  | MY_DEFAULT_PRIMARY_DNS_BYTE4<<24ul;
	AppConfig.SecondaryDNSServer.Val = MY_DEFAULT_SECONDARY_DNS_BYTE1 | MY_DEFAULT_SECONDARY_DNS_BYTE2<<8ul  
					| MY_DEFAULT_SECONDARY_DNS_BYTE3<<16ul  | MY_DEFAULT_SECONDARY_DNS_BYTE4<<24ul;
#endif
     // ?f?t?H???g?ÌNetBIOS?z?X?g?¼?ð?[?h?·?é
     memcpypgm2ram(AppConfig.NetBIOSName, (ROM void *)MY_DEFAULT_HOST_NAME, 16);
     FormatNetBIOSName(AppConfig.NetBIOSName);
}

void SES_ModbusTCP_Client_Init(void)
{
    InitAppConfig() ;
    StackInit() ;
    MAX_Query = 1;
    
    Client_telegram[0].IP.val = MAKE_IPV4_ADDRESS(192, 168, 1, 20);
    Client_telegram[0].u8id = 1; // slave address
    Client_telegram[0].u8fct = 3; // function code (this one is write a single register)
    Client_telegram[0].u16RegAdd = 0; // start address in slave
    Client_telegram[0].u16CoilsNo = 100; // number of elements (coils or registers) to read
    Client_telegram[0].au16reg = SES_42.HOLDING_REGS;//C_au16data; // pointer to a memory array 
    
//    Client_telegram[1].IP.val = MAKE_IPV4_ADDRESS(192, 168, 1, 21);
//    Client_telegram[1].u8id = 2; // slave address
//    Client_telegram[1].u8fct = 16; // function code (this one is write a single register)
//    Client_telegram[1].u16RegAdd = 0; // start address in slave
//    Client_telegram[1].u16CoilsNo = 10; // number of elements (coils or registers) to read
//    Client_telegram[1].au16reg = SES_42.HOLDING_REGS; // pointer to a memory array  
}
static int8_t SES_Modbus_query( MODBUS_CLIENT_TELEGRAM telegram )
{
    uint16_t SES_Modbus_Size = 0;
    uint8_t i;
    uint16_t packetLength;

    //if(C_u8state != COM_IDLE) return -1;
    
    SES_Modbus.au16regs = telegram.au16reg;  // CA 2 DEU TRO DEN  au16data[16], VI  telegram.au16reg => au16data
    
    SES_Modbus.au8Buffer[SES_Modbus_Size++] = highByte(C_u16MBTransactionID);
    SES_Modbus.au8Buffer[SES_Modbus_Size++] = lowByte(C_u16MBTransactionID);
    SES_Modbus.au8Buffer[SES_Modbus_Size++] = highByte(C_u16MBProtocolID);
    SES_Modbus.au8Buffer[SES_Modbus_Size++] = lowByte(C_u16MBProtocolID);
    SES_Modbus_Size += 2;
    packetLength =SES_Modbus_Size;
    SES_Modbus.au8Buffer[SES_Modbus_Size++] = telegram.u8id;
    SES_Modbus.au8Buffer[SES_Modbus_Size++] = telegram.u8fct;
            
    SES_Modbus.au8Buffer[SES_Modbus_Size++] = highByte(telegram.u16RegAdd);
    SES_Modbus.au8Buffer[SES_Modbus_Size++] = lowByte(telegram.u16RegAdd);
    
    switch(telegram.u8fct)
    {
        case MB_FC_READ_COILS:
        case MB_FC_READ_DISCRETE_INPUT:
        case MB_FC_READ_HOLD_REGISTERS:
            SES_Modbus.au8Buffer[ SES_Modbus_Size++ ] = highByte(telegram.u16CoilsNo );
            SES_Modbus.au8Buffer[ SES_Modbus_Size++ ] = lowByte(telegram.u16CoilsNo );
        case MB_FC_READ_INPUT_REGISTER:
            SES_Modbus.au8Buffer[ SES_Modbus_Size++ ] = highByte(telegram.u16CoilsNo );
            SES_Modbus.au8Buffer[ SES_Modbus_Size++ ] = lowByte(telegram.u16CoilsNo );
            break;
        case MB_FC_WRITE_COIL:
            SES_Modbus.au8Buffer[ SES_Modbus_Size++ ]      = ((telegram.au16reg[0] > 0) ? 0xff : 0);
            SES_Modbus.au8Buffer[ SES_Modbus_Size++ ]      = 0;
            break;
        case MB_FC_WRITE_REGISTER:
            SES_Modbus.au8Buffer[ SES_Modbus_Size++ ]      = highByte(telegram.au16reg[0]);
            SES_Modbus.au8Buffer[ SES_Modbus_Size++ ]      = lowByte(telegram.au16reg[0]);
            break;
        case MB_FC_WRITE_MULTIPLE_COILS: 
        case MB_FC_WRITE_MULTIPLE_REGISTERS:            
            SES_Modbus.au8Buffer[ SES_Modbus_Size++ ] = highByte(telegram.u16CoilsNo);
            SES_Modbus.au8Buffer[ SES_Modbus_Size++ ] = lowByte(telegram.u16CoilsNo);           
            SES_Modbus.au8Buffer[ SES_Modbus_Size++ ] = telegram.u16CoilsNo << 1;           
            for (i = 0; i < telegram.u16CoilsNo; i++)
            {
              SES_Modbus.au8Buffer[SES_Modbus_Size++] = highByte( telegram.au16reg[ i ] );
              SES_Modbus.au8Buffer[SES_Modbus_Size++] = lowByte(telegram.au16reg[ i ] );
            }
            break;  
    }
    
    SES_Modbus.au8Buffer[SES_Modbus_Size] = 0;
    packetLength = SES_Modbus_Size - packetLength;
    SES_Modbus.au8Buffer[4] = packetLength << 8;
    SES_Modbus.au8Buffer[5] = packetLength;     
    Frame_len = SES_Modbus_Size;
    
    //TCP_Send(&port[query], SES_Modbus.au8Buffer, Frame_len);
    timeout = TickGet();
    
    //C_u8state = COM_WAITING;
    C_u8lastRec = 0;
    return 0;
    
}

static void SES_ModbusReq(void)
{

    //printf("State: %d",ModbusClientState);
    if(ModbusClientState == MBCS_DISCONNECT)
    {
        
        query++;
        if(query >= MAX_Query)
            query = 0;
        
        //query = 1;
    }
}


static uint8_t SES_Modbus_validateAnswer(void)
{

    // check exception
    if ((SES_Modbus.au8Buffer[ FunctionCode ] & 0x80) != 0)
    {
        C_u16errCnt ++;
        return ERR_EXCEPTION;
    }

    // check fct code
    boolean isSupported = false;
    uint8_t i;
    for (i = 0; i< sizeof( fctsupported ); i++)
    {
        if (fctsupported[i] == SES_Modbus.au8Buffer[ FunctionCode ])
        {
            isSupported = 1;
            break;
        }
    }
    if (!isSupported)
    {
        C_u16errCnt ++;
        return EXC_FUNC_CODE;
    }

    return 0; // OK, no exception code thrown
}
static void get_FC3(void)
{
    uint8_t  i;
  

    for (i=0; i< SES_Modbus.au8Buffer[ 8 ] /2; i++)
    {
        SES_Modbus.au16regs[ i ] = word(
                            SES_Modbus.au8Buffer[ 2*i + 9],
                            SES_Modbus.au8Buffer[ 2*i + 10 ]);
      
    }
}


/*********************************************************
 *
 * Listens for ModBus requests and processes them.
 *
 *********************************************************/
static MODBUS_CLIENT_STATE ModbusRequestTask(void)
{
	

	static TCP_SOCKET	MySocket = INVALID_SOCKET;
	//static char		buffer[20];
	static DWORD	Timer;

	static unsigned char received = 0;

	static BYTE error_flag = 0;

	if( !bModbusClientInitialised )
	{
		ModbusClientState = MBCS_DISCONNECT;
		bModbusClientInitialised = 1;
	}
    //printf("S: %d",ModbusClientState);
	SES_ModbusReq();
	{	
		
		if((MySocket == INVALID_SOCKET && ModbusClientState != MBCS_DISCONNECT))
			ModbusClientState = MBCS_HOME;	

		// Handle session state
		switch(ModbusClientState)
		{
			case MBCS_HOME: // Opens the socket at the specified port to listen for request.
			{
				static char invalid_counts = 0;
			
				// Connect a socket to the remote TCP server
                //ip.Val = 0x1401A8C0;
                //MySocket = TCPOpen(ip.Val, TCP_OPEN_IP_ADDRESS, MODBUS_PORT, TCP_PURPOSE_MODBUS_CLIENT);

				MySocket = TCPOpen(Client_telegram[query].IP.val, TCP_OPEN_IP_ADDRESS, MODBUS_PORT, TCP_PURPOSE_MODBUS_CLIENT);
				
				// Abort operation if no TCP socket of type TCP_PURPOSE_MODBUS is available
				// If this ever happens, you need to go add one to TCPIPConfig.h
				if(MySocket == INVALID_SOCKET)
				{
					if( invalid_counts++ > 2 )	
					{
						invalid_counts = 0;
						error_flag = 68;
						ModbusClientState = MBCS_DISCONNECT;
					}	
					break;
				}	
	
				invalid_counts = 0;
				Timer = TickGet();
				ModbusClientState = MBCS_SOCKET_OBTAINED;
			}	
				break;
			
			case MBCS_SOCKET_OBTAINED:  // This listens out for new requests and checks the message header.
			{
				if( !TCPIsConnected(MySocket) || TCPWasReset(MySocket) )
				{
					//if(TickGet()-Timer > 4*TICK_SECOND)
					if((float)TickGet()-(float)Timer > 4.0f*(float)TICK_SECOND)
					{
						error_flag = 1;
						ModbusClientState = MBCS_DISCONNECT;
					}
					break;
				}
				
				{
					WORD w;

					// This is starting of a new message. Clear the TCPIP rx buffer first.
					TCPDiscard(MySocket);

					
					/* Form the MODBUS message format.
					 * Register is in little endian format.
					 * checksum is not required for Modbus TCP protocol.
					 * +-----------+---------------+---------------+------------------+
					 * | Device ID | Function Code | Starting Addr | No. of registers |
					 * |  1-byte   |    1 byte     |    2-byte     |      2-byte      |
					 * +-----------+---------------+---------------+------------------+
					 */

					// Make certain the socket can be written to
//					if( TCPIsPutReady(MySocket) < sizeof(MODBUS_REQUEST_BLOCK) )
//						break;
                    
                    SES_Modbus_query(Client_telegram[query]);
                    
                    w = TCPPutArray(MySocket, SES_Modbus.au8Buffer, Frame_len);
				
					//if( w >= sizeof(MODBUS_REQUEST_BLOCK))
                    if( w >= Frame_len)
					{
						// Sending completed.
						TCPFlush(MySocket);
						Timer = TickGet();
						received = 0;
						ModbusClientState = MBCS_WAIT_RESPONSE;
					
						break;
					}
				
					break;			
				}	
			}
			
			case MBCS_WAIT_RESPONSE:
			{
				WORD w;
		
				
				if( !TCPIsConnected(MySocket) || TCPWasReset(MySocket) )
				{
					// 2012-05-08(Eric) - When we have error_flag 30, it may mean that the top board has sent "CLS".
					// However since the top board goes to disconnect state before we respond, the connection
					// could already have been cut by the top board before we process the "CLS".
					if( (error_flag / 10) == 6 )
						error_flag += 150;
					else if( error_flag == 0 )
						error_flag = 30;  // Socket reset.
					ModbusClientState = MBCS_DISCONNECT;
					break;
				}
				if( (TickGet()-Timer) > (4*TICK_SECOND) )
				{

					// End debug.
					ModbusClientState = MBCS_DISCONNECT;
					break;
				}

				w = TCPIsGetReady(MySocket);
                if(w < 6) break;
				received += TCPGetArray(MySocket, SES_Modbus.au8Buffer, w);
				
				// We are waiting for a MCU_REQUEST_BLOCK data here...
				uint8_t u8exception;
                u8exception = SES_Modbus_validateAnswer();
                if(!u8exception)
                    ModbusClientState = MBCS_PROCESS_RESPONSE;
                else
                    printf("Exception %d",u8exception);
                // When we reach here, it means we seem to have received actual data.
		
				break;
			}	

			case MBCS_PROCESS_RESPONSE:  // Processes the request and forms the response packet.
			{
                switch (SES_Modbus.au8Buffer[FunctionCode])
                {
                    case MB_FC_READ_COILS:
                        ModbusClientState = MBCS_DISCONNECT;
                        break;
                    case MB_FC_READ_DISCRETE_INPUT:
                        ModbusClientState = MBCS_DISCONNECT;
                        break;
                    case MB_FC_READ_HOLD_REGISTERS:
                        get_FC3();
                        ModbusClientState = MBCS_DISCONNECT;
                        break;
                    case MB_FC_READ_INPUT_REGISTER:
                        get_FC3();
                        ModbusClientState = MBCS_DISCONNECT;
                        break;
                    case MB_FC_WRITE_COIL:
                        ModbusClientState = MBCS_DISCONNECT;
                        break;
                    case MB_FC_WRITE_REGISTER:
                        ModbusClientState = MBCS_DISCONNECT;
                        break;
                    case MB_FC_WRITE_MULTIPLE_COILS: 
                        ModbusClientState = MBCS_DISCONNECT;
                        break;
                    case MB_FC_WRITE_MULTIPLE_REGISTERS:
                        ModbusClientState = MBCS_DISCONNECT;
                        break;
                }
				
			}
				break;
			
			case MBCS_DISCONNECT:
			{	
				if( MySocket != INVALID_SOCKET )
				{
					TCPDiscard(MySocket);
					TCPDisconnect(MySocket);
					TCPClose(MySocket);
					MySocket = INVALID_SOCKET;
				}	
			
				// If reading was not successfully returned, send a error message back.
				if(error_flag!=5)
				{

					//ZigbeeTransmitRequest(8, reply);
				}


				error_flag = 0;
				// We already reported back the error, so we just drop the message and wait for a new request.
				//if( modbus_request.w.Flags.IsNewRequest == 0 )
				{
//					modbus_request.w.FunctionCode = 0;
//					modbus_request.w.IPAddr.Val = 0;
				}
				
				ModbusClientState = (MODBUS_CLIENT_STATE)MBCS_HOME;
				break;
			}
			case MBCS_RELEASE:
			{
				// Call this if we are going to connect to another server.
				if( MySocket != INVALID_SOCKET )
				{
					TCPDiscard(MySocket);
					TCPDisconnect(MySocket);
					TCPClose(MySocket);
					MySocket = INVALID_SOCKET;
				}
				ModbusClientState = (MODBUS_CLIENT_STATE)MBCS_DISCONNECT;
				break;
			}
			default:
				break;
		}
		
		return ModbusClientState;
	}		
}  // #if defined(APP_USE_MODBUS_CLIENT).
void SES_ModbusTCPIP_Client_Process(void)
{
        StackTask() ;
        StackApplications();
        ModbusRequestTask(); 
}
#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/4.2PV_Weather.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/4.2PV_Weather.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/drivers/i2c_types.c mcc_generated_files/drivers/i2c_master.c mcc_generated_files/drivers/i2c_simple_master.c mcc_generated_files/uart3.c mcc_generated_files/reset.c mcc_generated_files/system.c mcc_generated_files/clock.c mcc_generated_files/traps.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/uart1.c mcc_generated_files/spi1.c mcc_generated_files/tmr2.c mcc_generated_files/EEPROM3_example.c mcc_generated_files/EEPROM3_driver.c mcc_generated_files/i2c2_driver.c mcc_generated_files/tmr3.c Modbus/ModbusRTU_Master.c Modbus/ModbusTCPServer.c Modbus/ModbusRTU_Slave.c Framework/tcpip/src/common/arc4.c Framework/tcpip/src/common/big_int.c Framework/tcpip/src/common/delay.c Framework/tcpip/src/common/hashes.c Framework/tcpip/src/common/helpers.c Framework/tcpip/src/common/mpfs2.c Framework/tcpip/src/common/rsa.c Framework/tcpip/src/common/stack_task.c Framework/tcpip/src/common/tick.c Framework/tcpip/src/common/big_int_helper.S Framework/tcpip/src/arp.c Framework/tcpip/src/custom_ssl_cert.c Framework/tcpip/src/ddns.c Framework/tcpip/src/dhcp_client.c Framework/tcpip/src/dhcp_server.c Framework/tcpip/src/dns_client.c Framework/tcpip/src/dns_server.c Framework/tcpip/src/enc28j60.c Framework/tcpip/src/FTP.c Framework/tcpip/src/http2.c Framework/tcpip/src/icmp.c Framework/tcpip/src/ip.c Framework/tcpip/src/nbns.c Framework/tcpip/src/random.c Framework/tcpip/src/smtp.c Framework/tcpip/src/ssl.c Framework/tcpip/src/tcp.c Framework/tcpip/src/telnet.c Framework/tcpip/src/udp.c Framework/tcpip/src/announce.c main.c 4_2_Data.c user.c WeatherSensor/Weather.c WeatherSensor/1.Irradiation/0.Irradiation.c WeatherSensor/1.Irradiation/1.RIKA_RK200_04.c WeatherSensor/2.Windirection/1.RIKA_RK110_01.c WeatherSensor/3.WindSpeed/1.RIKA_RK100_01.c WeatherSensor/3.WindSpeed/0.Windspeed.c WeatherSensor/2.Windirection/0.Winddirection.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o ${OBJECTDIR}/mcc_generated_files/uart3.o ${OBJECTDIR}/mcc_generated_files/reset.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/spi1.o ${OBJECTDIR}/mcc_generated_files/tmr2.o ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o ${OBJECTDIR}/mcc_generated_files/tmr3.o ${OBJECTDIR}/Modbus/ModbusRTU_Master.o ${OBJECTDIR}/Modbus/ModbusTCPServer.o ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o ${OBJECTDIR}/Framework/tcpip/src/common/delay.o ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o ${OBJECTDIR}/Framework/tcpip/src/common/tick.o ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o ${OBJECTDIR}/Framework/tcpip/src/arp.o ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o ${OBJECTDIR}/Framework/tcpip/src/ddns.o ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o ${OBJECTDIR}/Framework/tcpip/src/dns_client.o ${OBJECTDIR}/Framework/tcpip/src/dns_server.o ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o ${OBJECTDIR}/Framework/tcpip/src/FTP.o ${OBJECTDIR}/Framework/tcpip/src/http2.o ${OBJECTDIR}/Framework/tcpip/src/icmp.o ${OBJECTDIR}/Framework/tcpip/src/ip.o ${OBJECTDIR}/Framework/tcpip/src/nbns.o ${OBJECTDIR}/Framework/tcpip/src/random.o ${OBJECTDIR}/Framework/tcpip/src/smtp.o ${OBJECTDIR}/Framework/tcpip/src/ssl.o ${OBJECTDIR}/Framework/tcpip/src/tcp.o ${OBJECTDIR}/Framework/tcpip/src/telnet.o ${OBJECTDIR}/Framework/tcpip/src/udp.o ${OBJECTDIR}/Framework/tcpip/src/announce.o ${OBJECTDIR}/main.o ${OBJECTDIR}/4_2_Data.o ${OBJECTDIR}/user.o ${OBJECTDIR}/WeatherSensor/Weather.o ${OBJECTDIR}/WeatherSensor/1.Irradiation/0.Irradiation.o ${OBJECTDIR}/WeatherSensor/1.Irradiation/1.RIKA_RK200_04.o ${OBJECTDIR}/WeatherSensor/2.Windirection/1.RIKA_RK110_01.o ${OBJECTDIR}/WeatherSensor/3.WindSpeed/1.RIKA_RK100_01.o ${OBJECTDIR}/WeatherSensor/3.WindSpeed/0.Windspeed.o ${OBJECTDIR}/WeatherSensor/2.Windirection/0.Winddirection.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d ${OBJECTDIR}/mcc_generated_files/uart3.o.d ${OBJECTDIR}/mcc_generated_files/reset.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/mcc_generated_files/spi1.o.d ${OBJECTDIR}/mcc_generated_files/tmr2.o.d ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o.d ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o.d ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d ${OBJECTDIR}/mcc_generated_files/tmr3.o.d ${OBJECTDIR}/Modbus/ModbusRTU_Master.o.d ${OBJECTDIR}/Modbus/ModbusTCPServer.o.d ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o.d ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o.d ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o.d ${OBJECTDIR}/Framework/tcpip/src/common/delay.o.d ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o.d ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o.d ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o.d ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o.d ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o.d ${OBJECTDIR}/Framework/tcpip/src/common/tick.o.d ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o.d ${OBJECTDIR}/Framework/tcpip/src/arp.o.d ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o.d ${OBJECTDIR}/Framework/tcpip/src/ddns.o.d ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o.d ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o.d ${OBJECTDIR}/Framework/tcpip/src/dns_client.o.d ${OBJECTDIR}/Framework/tcpip/src/dns_server.o.d ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o.d ${OBJECTDIR}/Framework/tcpip/src/FTP.o.d ${OBJECTDIR}/Framework/tcpip/src/http2.o.d ${OBJECTDIR}/Framework/tcpip/src/icmp.o.d ${OBJECTDIR}/Framework/tcpip/src/ip.o.d ${OBJECTDIR}/Framework/tcpip/src/nbns.o.d ${OBJECTDIR}/Framework/tcpip/src/random.o.d ${OBJECTDIR}/Framework/tcpip/src/smtp.o.d ${OBJECTDIR}/Framework/tcpip/src/ssl.o.d ${OBJECTDIR}/Framework/tcpip/src/tcp.o.d ${OBJECTDIR}/Framework/tcpip/src/telnet.o.d ${OBJECTDIR}/Framework/tcpip/src/udp.o.d ${OBJECTDIR}/Framework/tcpip/src/announce.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/4_2_Data.o.d ${OBJECTDIR}/user.o.d ${OBJECTDIR}/WeatherSensor/Weather.o.d ${OBJECTDIR}/WeatherSensor/1.Irradiation/0.Irradiation.o.d ${OBJECTDIR}/WeatherSensor/1.Irradiation/1.RIKA_RK200_04.o.d ${OBJECTDIR}/WeatherSensor/2.Windirection/1.RIKA_RK110_01.o.d ${OBJECTDIR}/WeatherSensor/3.WindSpeed/1.RIKA_RK100_01.o.d ${OBJECTDIR}/WeatherSensor/3.WindSpeed/0.Windspeed.o.d ${OBJECTDIR}/WeatherSensor/2.Windirection/0.Winddirection.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o ${OBJECTDIR}/mcc_generated_files/uart3.o ${OBJECTDIR}/mcc_generated_files/reset.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/spi1.o ${OBJECTDIR}/mcc_generated_files/tmr2.o ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o ${OBJECTDIR}/mcc_generated_files/tmr3.o ${OBJECTDIR}/Modbus/ModbusRTU_Master.o ${OBJECTDIR}/Modbus/ModbusTCPServer.o ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o ${OBJECTDIR}/Framework/tcpip/src/common/delay.o ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o ${OBJECTDIR}/Framework/tcpip/src/common/tick.o ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o ${OBJECTDIR}/Framework/tcpip/src/arp.o ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o ${OBJECTDIR}/Framework/tcpip/src/ddns.o ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o ${OBJECTDIR}/Framework/tcpip/src/dns_client.o ${OBJECTDIR}/Framework/tcpip/src/dns_server.o ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o ${OBJECTDIR}/Framework/tcpip/src/FTP.o ${OBJECTDIR}/Framework/tcpip/src/http2.o ${OBJECTDIR}/Framework/tcpip/src/icmp.o ${OBJECTDIR}/Framework/tcpip/src/ip.o ${OBJECTDIR}/Framework/tcpip/src/nbns.o ${OBJECTDIR}/Framework/tcpip/src/random.o ${OBJECTDIR}/Framework/tcpip/src/smtp.o ${OBJECTDIR}/Framework/tcpip/src/ssl.o ${OBJECTDIR}/Framework/tcpip/src/tcp.o ${OBJECTDIR}/Framework/tcpip/src/telnet.o ${OBJECTDIR}/Framework/tcpip/src/udp.o ${OBJECTDIR}/Framework/tcpip/src/announce.o ${OBJECTDIR}/main.o ${OBJECTDIR}/4_2_Data.o ${OBJECTDIR}/user.o ${OBJECTDIR}/WeatherSensor/Weather.o ${OBJECTDIR}/WeatherSensor/1.Irradiation/0.Irradiation.o ${OBJECTDIR}/WeatherSensor/1.Irradiation/1.RIKA_RK200_04.o ${OBJECTDIR}/WeatherSensor/2.Windirection/1.RIKA_RK110_01.o ${OBJECTDIR}/WeatherSensor/3.WindSpeed/1.RIKA_RK100_01.o ${OBJECTDIR}/WeatherSensor/3.WindSpeed/0.Windspeed.o ${OBJECTDIR}/WeatherSensor/2.Windirection/0.Winddirection.o

# Source Files
SOURCEFILES=mcc_generated_files/drivers/i2c_types.c mcc_generated_files/drivers/i2c_master.c mcc_generated_files/drivers/i2c_simple_master.c mcc_generated_files/uart3.c mcc_generated_files/reset.c mcc_generated_files/system.c mcc_generated_files/clock.c mcc_generated_files/traps.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/uart1.c mcc_generated_files/spi1.c mcc_generated_files/tmr2.c mcc_generated_files/EEPROM3_example.c mcc_generated_files/EEPROM3_driver.c mcc_generated_files/i2c2_driver.c mcc_generated_files/tmr3.c Modbus/ModbusRTU_Master.c Modbus/ModbusTCPServer.c Modbus/ModbusRTU_Slave.c Framework/tcpip/src/common/arc4.c Framework/tcpip/src/common/big_int.c Framework/tcpip/src/common/delay.c Framework/tcpip/src/common/hashes.c Framework/tcpip/src/common/helpers.c Framework/tcpip/src/common/mpfs2.c Framework/tcpip/src/common/rsa.c Framework/tcpip/src/common/stack_task.c Framework/tcpip/src/common/tick.c Framework/tcpip/src/common/big_int_helper.S Framework/tcpip/src/arp.c Framework/tcpip/src/custom_ssl_cert.c Framework/tcpip/src/ddns.c Framework/tcpip/src/dhcp_client.c Framework/tcpip/src/dhcp_server.c Framework/tcpip/src/dns_client.c Framework/tcpip/src/dns_server.c Framework/tcpip/src/enc28j60.c Framework/tcpip/src/FTP.c Framework/tcpip/src/http2.c Framework/tcpip/src/icmp.c Framework/tcpip/src/ip.c Framework/tcpip/src/nbns.c Framework/tcpip/src/random.c Framework/tcpip/src/smtp.c Framework/tcpip/src/ssl.c Framework/tcpip/src/tcp.c Framework/tcpip/src/telnet.c Framework/tcpip/src/udp.c Framework/tcpip/src/announce.c main.c 4_2_Data.c user.c WeatherSensor/Weather.c WeatherSensor/1.Irradiation/0.Irradiation.c WeatherSensor/1.Irradiation/1.RIKA_RK200_04.c WeatherSensor/2.Windirection/1.RIKA_RK110_01.c WeatherSensor/3.WindSpeed/1.RIKA_RK100_01.c WeatherSensor/3.WindSpeed/0.Windspeed.c WeatherSensor/2.Windirection/0.Winddirection.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/4.2PV_Weather.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33EP512MU810
MP_LINKER_FILE_OPTION=,--script=p33EP512MU810.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/36403b28b63c37a82da6b7b256b1c7ad421bb2e4.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_types.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/288af56a199a6290608ac59842053d09a35939a8.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/56eb632f49977e027c07e94b7013ede7d78d1d9f.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_simple_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/uart3.o: mcc_generated_files/uart3.c  .generated_files/1e052895d5031a713993990fcd1a6a6326ad6950.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart3.c  -o ${OBJECTDIR}/mcc_generated_files/uart3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart3.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/68f7bf77b44fb034e1eaf72a32b0a821086e61f2.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/f072e7a653e6b31f80a01895eae02c0ace3004f6.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/665c59120502c8658cc65973851e3c6a2e1aa641.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/f4dcb3b5cca28869c1103b3acca5c988d5e9b857.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/9b68f6fa087a42d5b1b471fcf4a4a0846b3e9b64.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/c5a1e0eca1bd1e18bb41e6fe47953f290f5f0bd6.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/572c04633220c798abf3569bae90bff1845d3015.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/c51f4ed14c4c6e70ef8e9691abd6b66ad9060f42.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/spi1.o: mcc_generated_files/spi1.c  .generated_files/aaac482befdf86f3ca9a1ba54fd8f3eefdda8da3.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1.c  -o ${OBJECTDIR}/mcc_generated_files/spi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/508fbd1664d4f43329302e6ef6d862b62fefbb34.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr2.c  -o ${OBJECTDIR}/mcc_generated_files/tmr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o: mcc_generated_files/EEPROM3_example.c  .generated_files/c38f321b31f919923466a01c85173b1239bd1b23.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/EEPROM3_example.c  -o ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o: mcc_generated_files/EEPROM3_driver.c  .generated_files/30fa075931cc28000de1bc9909403d8452698d47.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/EEPROM3_driver.c  -o ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/i2c2_driver.o: mcc_generated_files/i2c2_driver.c  .generated_files/d144cbcab3ee6fa74af7bff320f88ebf99048965.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c2_driver.c  -o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/tmr3.o: mcc_generated_files/tmr3.c  .generated_files/58220acd4ac546f3c0f15bab87bcf264d81de51e.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr3.c  -o ${OBJECTDIR}/mcc_generated_files/tmr3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr3.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Modbus/ModbusRTU_Master.o: Modbus/ModbusRTU_Master.c  .generated_files/63e12477d5d92c420ecdc62802d6a6b513f5744.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Modbus" 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Master.o.d 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Modbus/ModbusRTU_Master.c  -o ${OBJECTDIR}/Modbus/ModbusRTU_Master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Modbus/ModbusRTU_Master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Modbus/ModbusTCPServer.o: Modbus/ModbusTCPServer.c  .generated_files/16672faeb56972c2743db0e82fc631fcc14b8cd2.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Modbus" 
	@${RM} ${OBJECTDIR}/Modbus/ModbusTCPServer.o.d 
	@${RM} ${OBJECTDIR}/Modbus/ModbusTCPServer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Modbus/ModbusTCPServer.c  -o ${OBJECTDIR}/Modbus/ModbusTCPServer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Modbus/ModbusTCPServer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Modbus/ModbusRTU_Slave.o: Modbus/ModbusRTU_Slave.c  .generated_files/f35550f9c72d8fbae5deefa822f1d8733087ff2f.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Modbus" 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o.d 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Modbus/ModbusRTU_Slave.c  -o ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Modbus/ModbusRTU_Slave.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/arc4.o: Framework/tcpip/src/common/arc4.c  .generated_files/4aa64088c4ab5322e8dcc8bbd80bf25a11edc66a.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/arc4.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/arc4.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/big_int.o: Framework/tcpip/src/common/big_int.c  .generated_files/419baa3762f85d30959939ad25575d515cd07c87.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/big_int.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/big_int.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/delay.o: Framework/tcpip/src/common/delay.c  .generated_files/a6385bc2a81c06ddbe31a23420cd29c893d7e83f.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/delay.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/delay.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/delay.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/hashes.o: Framework/tcpip/src/common/hashes.c  .generated_files/933c06bd3c29d25c864af3f60f03c5de797d4c34.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/hashes.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/hashes.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/helpers.o: Framework/tcpip/src/common/helpers.c  .generated_files/da4c9ea35ed47520c8dfcc36c88b12b44b0ed2b2.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/helpers.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/helpers.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o: Framework/tcpip/src/common/mpfs2.c  .generated_files/61165f07b1dd05c3b56d692f8f1b7cb731a4fc23.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/mpfs2.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/rsa.o: Framework/tcpip/src/common/rsa.c  .generated_files/c7c0c6cc9efe20fbce9cdc52932e8ec4780869b1.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/rsa.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/rsa.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o: Framework/tcpip/src/common/stack_task.c  .generated_files/d04d9bac77269c3ce752c4bc2ed98048a4abda3.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/stack_task.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/tick.o: Framework/tcpip/src/common/tick.c  .generated_files/972385e5378a7974cf0bdbd4664a7df00dc5f7fe.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/tick.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/tick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/tick.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/tick.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/tick.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/arp.o: Framework/tcpip/src/arp.c  .generated_files/bca7c86e8cb956232062c504c27360452f81e020.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/arp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/arp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/arp.c  -o ${OBJECTDIR}/Framework/tcpip/src/arp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/arp.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o: Framework/tcpip/src/custom_ssl_cert.c  .generated_files/6ea1bc3a7003c4d16fcba744d554a05c364fecfd.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/custom_ssl_cert.c  -o ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/ddns.o: Framework/tcpip/src/ddns.c  .generated_files/bc357087bb4af57cb67a0a7f28df23b8fe4e533b.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ddns.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ddns.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/ddns.c  -o ${OBJECTDIR}/Framework/tcpip/src/ddns.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/ddns.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o: Framework/tcpip/src/dhcp_client.c  .generated_files/44f1bc7f209e6c9789f47e630e21658e7b0c5523.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dhcp_client.c  -o ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o: Framework/tcpip/src/dhcp_server.c  .generated_files/f0369a6446160ceade9e1b6c03ca98cef823fa70.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dhcp_server.c  -o ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dns_client.o: Framework/tcpip/src/dns_client.c  .generated_files/6fbccbf76d1b0448e50e36269ba2a5ea601d235a.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_client.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dns_client.c  -o ${OBJECTDIR}/Framework/tcpip/src/dns_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dns_client.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dns_server.o: Framework/tcpip/src/dns_server.c  .generated_files/c7a2c7718391ded597bfd5f3c073bc7d5433a3cc.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_server.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dns_server.c  -o ${OBJECTDIR}/Framework/tcpip/src/dns_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dns_server.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/enc28j60.o: Framework/tcpip/src/enc28j60.c  .generated_files/8cb9bcac3e24a9dd988d0fb002dd41eda4967499.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/enc28j60.c  -o ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/enc28j60.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/FTP.o: Framework/tcpip/src/FTP.c  .generated_files/9866c19d5071c8f4cf1f849ea7d5275b72acb74c.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/FTP.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/FTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/FTP.c  -o ${OBJECTDIR}/Framework/tcpip/src/FTP.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/FTP.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/http2.o: Framework/tcpip/src/http2.c  .generated_files/fef48c7bb9e58ff941d9f3e3c87376535d7998ef.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/http2.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/http2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/http2.c  -o ${OBJECTDIR}/Framework/tcpip/src/http2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/http2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/icmp.o: Framework/tcpip/src/icmp.c  .generated_files/e06fce58ee0e62004f145b86c7e7bfb8092afa6f.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/icmp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/icmp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/icmp.c  -o ${OBJECTDIR}/Framework/tcpip/src/icmp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/icmp.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/ip.o: Framework/tcpip/src/ip.c  .generated_files/16b524b655064bb3a2393594fc22e988345c78aa.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ip.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ip.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/ip.c  -o ${OBJECTDIR}/Framework/tcpip/src/ip.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/ip.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/nbns.o: Framework/tcpip/src/nbns.c  .generated_files/8aa1cd731a0c66471517268ac6f55853c6ad81f3.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/nbns.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/nbns.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/nbns.c  -o ${OBJECTDIR}/Framework/tcpip/src/nbns.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/nbns.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/random.o: Framework/tcpip/src/random.c  .generated_files/26f9b7e431e7cad47cbb30a28a2f08704061a31d.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/random.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/random.c  -o ${OBJECTDIR}/Framework/tcpip/src/random.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/random.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/smtp.o: Framework/tcpip/src/smtp.c  .generated_files/cb0d326d4778e8fb8dfb8f61690b097c48efe385.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/smtp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/smtp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/smtp.c  -o ${OBJECTDIR}/Framework/tcpip/src/smtp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/smtp.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/ssl.o: Framework/tcpip/src/ssl.c  .generated_files/2ecdb284e5584cde4158b4fcc4a34a9fb83e88a4.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ssl.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/ssl.c  -o ${OBJECTDIR}/Framework/tcpip/src/ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/ssl.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/tcp.o: Framework/tcpip/src/tcp.c  .generated_files/1e921f70e845b7067084cc16abb3b612e8623b46.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/tcp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/tcp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/tcp.c  -o ${OBJECTDIR}/Framework/tcpip/src/tcp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/tcp.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/telnet.o: Framework/tcpip/src/telnet.c  .generated_files/46b9b7fa2a19250be2356ba7b989e15f8da89f7f.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/telnet.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/telnet.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/telnet.c  -o ${OBJECTDIR}/Framework/tcpip/src/telnet.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/telnet.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/udp.o: Framework/tcpip/src/udp.c  .generated_files/6a616caef0d54e494b421f5ec8e9ee5762d296b6.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/udp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/udp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/udp.c  -o ${OBJECTDIR}/Framework/tcpip/src/udp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/udp.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/announce.o: Framework/tcpip/src/announce.c  .generated_files/42d23c18905301c6bf921b20c1df36db4722f0cd.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/announce.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/announce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/announce.c  -o ${OBJECTDIR}/Framework/tcpip/src/announce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/announce.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/main.o: main.c  .generated_files/b18d6a1f830b1b9246b9f1c429f061e3a0896949.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/4_2_Data.o: 4_2_Data.c  .generated_files/4ffa2cffb2211c0618be2fe3ba5718604dda6cb5.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/4_2_Data.o.d 
	@${RM} ${OBJECTDIR}/4_2_Data.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  4_2_Data.c  -o ${OBJECTDIR}/4_2_Data.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/4_2_Data.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/user.o: user.c  .generated_files/bcfba0207ec7a193ca26a06707c4d69054c7b652.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/user.o.d 
	@${RM} ${OBJECTDIR}/user.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  user.c  -o ${OBJECTDIR}/user.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/user.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/WeatherSensor/Weather.o: WeatherSensor/Weather.c  .generated_files/f3a61a0d9d05b2384c7ef19b776db42e116cb476.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/WeatherSensor" 
	@${RM} ${OBJECTDIR}/WeatherSensor/Weather.o.d 
	@${RM} ${OBJECTDIR}/WeatherSensor/Weather.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WeatherSensor/Weather.c  -o ${OBJECTDIR}/WeatherSensor/Weather.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WeatherSensor/Weather.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/WeatherSensor/1.Irradiation/0.Irradiation.o: WeatherSensor/1.Irradiation/0.Irradiation.c  .generated_files/e778271e97217955aef9f86c575b0c87405d3e69.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/WeatherSensor/1.Irradiation" 
	@${RM} ${OBJECTDIR}/WeatherSensor/1.Irradiation/0.Irradiation.o.d 
	@${RM} ${OBJECTDIR}/WeatherSensor/1.Irradiation/0.Irradiation.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WeatherSensor/1.Irradiation/0.Irradiation.c  -o ${OBJECTDIR}/WeatherSensor/1.Irradiation/0.Irradiation.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WeatherSensor/1.Irradiation/0.Irradiation.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/WeatherSensor/1.Irradiation/1.RIKA_RK200_04.o: WeatherSensor/1.Irradiation/1.RIKA_RK200_04.c  .generated_files/24d5fd1f95e131b9fbb77919e21da40ab8deb6c5.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/WeatherSensor/1.Irradiation" 
	@${RM} ${OBJECTDIR}/WeatherSensor/1.Irradiation/1.RIKA_RK200_04.o.d 
	@${RM} ${OBJECTDIR}/WeatherSensor/1.Irradiation/1.RIKA_RK200_04.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WeatherSensor/1.Irradiation/1.RIKA_RK200_04.c  -o ${OBJECTDIR}/WeatherSensor/1.Irradiation/1.RIKA_RK200_04.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WeatherSensor/1.Irradiation/1.RIKA_RK200_04.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/WeatherSensor/2.Windirection/1.RIKA_RK110_01.o: WeatherSensor/2.Windirection/1.RIKA_RK110_01.c  .generated_files/3a263126dab0497a51bc747d1e01d0d0213e618f.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/WeatherSensor/2.Windirection" 
	@${RM} ${OBJECTDIR}/WeatherSensor/2.Windirection/1.RIKA_RK110_01.o.d 
	@${RM} ${OBJECTDIR}/WeatherSensor/2.Windirection/1.RIKA_RK110_01.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WeatherSensor/2.Windirection/1.RIKA_RK110_01.c  -o ${OBJECTDIR}/WeatherSensor/2.Windirection/1.RIKA_RK110_01.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WeatherSensor/2.Windirection/1.RIKA_RK110_01.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/WeatherSensor/3.WindSpeed/1.RIKA_RK100_01.o: WeatherSensor/3.WindSpeed/1.RIKA_RK100_01.c  .generated_files/f8a70540351a61893812cfee4342394cfbe7d4f1.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/WeatherSensor/3.WindSpeed" 
	@${RM} ${OBJECTDIR}/WeatherSensor/3.WindSpeed/1.RIKA_RK100_01.o.d 
	@${RM} ${OBJECTDIR}/WeatherSensor/3.WindSpeed/1.RIKA_RK100_01.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WeatherSensor/3.WindSpeed/1.RIKA_RK100_01.c  -o ${OBJECTDIR}/WeatherSensor/3.WindSpeed/1.RIKA_RK100_01.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WeatherSensor/3.WindSpeed/1.RIKA_RK100_01.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/WeatherSensor/3.WindSpeed/0.Windspeed.o: WeatherSensor/3.WindSpeed/0.Windspeed.c  .generated_files/8d1764ddc01cb68c66929485bbee43030ec5af5d.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/WeatherSensor/3.WindSpeed" 
	@${RM} ${OBJECTDIR}/WeatherSensor/3.WindSpeed/0.Windspeed.o.d 
	@${RM} ${OBJECTDIR}/WeatherSensor/3.WindSpeed/0.Windspeed.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WeatherSensor/3.WindSpeed/0.Windspeed.c  -o ${OBJECTDIR}/WeatherSensor/3.WindSpeed/0.Windspeed.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WeatherSensor/3.WindSpeed/0.Windspeed.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/WeatherSensor/2.Windirection/0.Winddirection.o: WeatherSensor/2.Windirection/0.Winddirection.c  .generated_files/a908fd1adb7dd96d282e78d1e66c6a262b994f1c.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/WeatherSensor/2.Windirection" 
	@${RM} ${OBJECTDIR}/WeatherSensor/2.Windirection/0.Winddirection.o.d 
	@${RM} ${OBJECTDIR}/WeatherSensor/2.Windirection/0.Winddirection.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WeatherSensor/2.Windirection/0.Winddirection.c  -o ${OBJECTDIR}/WeatherSensor/2.Windirection/0.Winddirection.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WeatherSensor/2.Windirection/0.Winddirection.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
else
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/e7a958dbef3350f3fa7b6194a810b7834b2782da.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_types.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/58fed8bf01a8e635cb4956e11aeb295a3008ebb5.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/13671d2575a3e9c677669d1ad2ba097cd6fb8177.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_simple_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/uart3.o: mcc_generated_files/uart3.c  .generated_files/be898fd6a986951e6c9ee67942fd7ac7f9e742fd.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart3.c  -o ${OBJECTDIR}/mcc_generated_files/uart3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart3.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/f5d82d920ff4cd20c9247aaf5d61c8d6d84b3375.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/934eedb318263fed228d835c12ac25021cf3cd65.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/f85ce23ae2dfe7ca8fef6839d1991377296915bf.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/1f0fb20fee8f60435e1bcfb628a36be6f9a21f88.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/7d0cafcb16485e80388661fe01f90af349f357c.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/e58c94e27e96d1f938bfcf04b0c6f94b25449b41.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/e32970024d08596542906c10efa0b377c88f83ac.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/ffb8eb4beff5246e28b91167630ff16a395e8126.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/spi1.o: mcc_generated_files/spi1.c  .generated_files/1d605b9b385a5fb083a34324677ca846d23a905b.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1.c  -o ${OBJECTDIR}/mcc_generated_files/spi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/5736dd9c898fa5694c79ce78af2aa466afca6a9f.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr2.c  -o ${OBJECTDIR}/mcc_generated_files/tmr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o: mcc_generated_files/EEPROM3_example.c  .generated_files/90216710fcc1b4dfd6cfd011a2c2ba27cafa0fa8.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/EEPROM3_example.c  -o ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o: mcc_generated_files/EEPROM3_driver.c  .generated_files/def58f5633941941f7445a313a17e38dde7e494c.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/EEPROM3_driver.c  -o ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/i2c2_driver.o: mcc_generated_files/i2c2_driver.c  .generated_files/286d2469958e6cb2bbe303e2f6ec213f58dc3799.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c2_driver.c  -o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/tmr3.o: mcc_generated_files/tmr3.c  .generated_files/d9833a5df09eac803e51f776648ab99913c4c79.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr3.c  -o ${OBJECTDIR}/mcc_generated_files/tmr3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr3.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Modbus/ModbusRTU_Master.o: Modbus/ModbusRTU_Master.c  .generated_files/b8c47be2f96e2f1ed3af07238e3e0b701b416855.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Modbus" 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Master.o.d 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Modbus/ModbusRTU_Master.c  -o ${OBJECTDIR}/Modbus/ModbusRTU_Master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Modbus/ModbusRTU_Master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Modbus/ModbusTCPServer.o: Modbus/ModbusTCPServer.c  .generated_files/1a64888ce54dd47a49d8e44ffc68accce552dd6c.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Modbus" 
	@${RM} ${OBJECTDIR}/Modbus/ModbusTCPServer.o.d 
	@${RM} ${OBJECTDIR}/Modbus/ModbusTCPServer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Modbus/ModbusTCPServer.c  -o ${OBJECTDIR}/Modbus/ModbusTCPServer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Modbus/ModbusTCPServer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Modbus/ModbusRTU_Slave.o: Modbus/ModbusRTU_Slave.c  .generated_files/28fabccaaf2ea871fc51d7b1ce30c50649c7c3b9.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Modbus" 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o.d 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Modbus/ModbusRTU_Slave.c  -o ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Modbus/ModbusRTU_Slave.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/arc4.o: Framework/tcpip/src/common/arc4.c  .generated_files/f77fdf30036e069dfd18211b291794b985977595.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/arc4.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/arc4.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/big_int.o: Framework/tcpip/src/common/big_int.c  .generated_files/b6ce0fcaa3867f47ba5ca5c27fc2ce4427b9cfa8.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/big_int.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/big_int.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/delay.o: Framework/tcpip/src/common/delay.c  .generated_files/3b06dc99571956ba64679773cca3b3d4f95981db.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/delay.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/delay.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/delay.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/hashes.o: Framework/tcpip/src/common/hashes.c  .generated_files/292fd1042bca42ea9e5cb8f34e11bed6e1c2aec0.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/hashes.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/hashes.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/helpers.o: Framework/tcpip/src/common/helpers.c  .generated_files/6ddc0d52b25e453d4c9f787dca420a447a395528.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/helpers.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/helpers.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o: Framework/tcpip/src/common/mpfs2.c  .generated_files/e0517571cc5716389cf5c42bf04f9033553fa1c4.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/mpfs2.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/rsa.o: Framework/tcpip/src/common/rsa.c  .generated_files/6d0622edf8997b18ec0a2eef77416d4f51b7b431.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/rsa.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/rsa.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o: Framework/tcpip/src/common/stack_task.c  .generated_files/96c7e10bd17176ca11c6d7dcec4383d092b718fc.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/stack_task.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/tick.o: Framework/tcpip/src/common/tick.c  .generated_files/b208f9eec37918f39f8a76ebfb889aeb74b6ef51.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/tick.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/tick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/tick.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/tick.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/tick.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/arp.o: Framework/tcpip/src/arp.c  .generated_files/c84cfe000164b115642ead99c0166ef250bc9386.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/arp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/arp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/arp.c  -o ${OBJECTDIR}/Framework/tcpip/src/arp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/arp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o: Framework/tcpip/src/custom_ssl_cert.c  .generated_files/bbb706ced59036753708002eed552164bb643359.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/custom_ssl_cert.c  -o ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/ddns.o: Framework/tcpip/src/ddns.c  .generated_files/131601e0980d673e74caa0817a75c7d1c2ceabea.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ddns.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ddns.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/ddns.c  -o ${OBJECTDIR}/Framework/tcpip/src/ddns.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/ddns.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o: Framework/tcpip/src/dhcp_client.c  .generated_files/a0752bfbec5c57a91e9020f1cd9440633b096e5f.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dhcp_client.c  -o ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o: Framework/tcpip/src/dhcp_server.c  .generated_files/46d3b3bd9d4d903e740f816d20d49496aaa60f5e.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dhcp_server.c  -o ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dns_client.o: Framework/tcpip/src/dns_client.c  .generated_files/b298f52bac9449a4c6530651d4dd019a8ba06799.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_client.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dns_client.c  -o ${OBJECTDIR}/Framework/tcpip/src/dns_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dns_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dns_server.o: Framework/tcpip/src/dns_server.c  .generated_files/265f02d577253ea3d103d1dca69c674af25eff6.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_server.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dns_server.c  -o ${OBJECTDIR}/Framework/tcpip/src/dns_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dns_server.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/enc28j60.o: Framework/tcpip/src/enc28j60.c  .generated_files/8dd68bf187c01b9c4abafcd380d01eb4ead41ac5.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/enc28j60.c  -o ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/enc28j60.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/FTP.o: Framework/tcpip/src/FTP.c  .generated_files/98ce93265cf7c8054aa79ab9fc3e7f4fb2df954b.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/FTP.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/FTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/FTP.c  -o ${OBJECTDIR}/Framework/tcpip/src/FTP.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/FTP.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/http2.o: Framework/tcpip/src/http2.c  .generated_files/8245b27bc0fe1723367c70ceb8d0408dd0b2ba8a.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/http2.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/http2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/http2.c  -o ${OBJECTDIR}/Framework/tcpip/src/http2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/http2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/icmp.o: Framework/tcpip/src/icmp.c  .generated_files/1501a0a1260bfa4362afe7a9cece6b8f2a14e5fa.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/icmp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/icmp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/icmp.c  -o ${OBJECTDIR}/Framework/tcpip/src/icmp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/icmp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/ip.o: Framework/tcpip/src/ip.c  .generated_files/f4a62ec2b70f517887a5ee1c9de8627ad4f22f53.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ip.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ip.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/ip.c  -o ${OBJECTDIR}/Framework/tcpip/src/ip.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/ip.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/nbns.o: Framework/tcpip/src/nbns.c  .generated_files/828faf69c9f16b3f656c78c201eceb158fdf684a.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/nbns.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/nbns.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/nbns.c  -o ${OBJECTDIR}/Framework/tcpip/src/nbns.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/nbns.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/random.o: Framework/tcpip/src/random.c  .generated_files/3125f678e98f0c61e79c6563a488e41ebd7e29d4.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/random.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/random.c  -o ${OBJECTDIR}/Framework/tcpip/src/random.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/random.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/smtp.o: Framework/tcpip/src/smtp.c  .generated_files/ad452fcf1ff7ef57436c3624ba94fed92580c0b5.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/smtp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/smtp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/smtp.c  -o ${OBJECTDIR}/Framework/tcpip/src/smtp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/smtp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/ssl.o: Framework/tcpip/src/ssl.c  .generated_files/edc4f8c604c87df8e2b6a5b06e31e241e458880a.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ssl.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/ssl.c  -o ${OBJECTDIR}/Framework/tcpip/src/ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/ssl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/tcp.o: Framework/tcpip/src/tcp.c  .generated_files/949641fd393df220fbdc5b2e223202ac38d13888.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/tcp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/tcp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/tcp.c  -o ${OBJECTDIR}/Framework/tcpip/src/tcp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/tcp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/telnet.o: Framework/tcpip/src/telnet.c  .generated_files/73493e7ae62f148b0e6ead76980c9f9c15bba33b.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/telnet.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/telnet.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/telnet.c  -o ${OBJECTDIR}/Framework/tcpip/src/telnet.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/telnet.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/udp.o: Framework/tcpip/src/udp.c  .generated_files/251245e05c8af05c62789fa50948112de3a4d7ae.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/udp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/udp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/udp.c  -o ${OBJECTDIR}/Framework/tcpip/src/udp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/udp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/announce.o: Framework/tcpip/src/announce.c  .generated_files/f8f8e97afed308c565452494fd7803443e833623.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/announce.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/announce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/announce.c  -o ${OBJECTDIR}/Framework/tcpip/src/announce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/announce.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/main.o: main.c  .generated_files/9eabab2fb162e12d16d5de8293566bbf4da501a.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/4_2_Data.o: 4_2_Data.c  .generated_files/bba0915a655660fad5907ae05807189e455a77f1.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/4_2_Data.o.d 
	@${RM} ${OBJECTDIR}/4_2_Data.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  4_2_Data.c  -o ${OBJECTDIR}/4_2_Data.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/4_2_Data.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/user.o: user.c  .generated_files/103fa02fbccb44506896562dc751e34d056110f3.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/user.o.d 
	@${RM} ${OBJECTDIR}/user.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  user.c  -o ${OBJECTDIR}/user.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/user.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/WeatherSensor/Weather.o: WeatherSensor/Weather.c  .generated_files/a35672a6b13fb830c1815d1a54fd82f1322713b2.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/WeatherSensor" 
	@${RM} ${OBJECTDIR}/WeatherSensor/Weather.o.d 
	@${RM} ${OBJECTDIR}/WeatherSensor/Weather.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WeatherSensor/Weather.c  -o ${OBJECTDIR}/WeatherSensor/Weather.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WeatherSensor/Weather.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/WeatherSensor/1.Irradiation/0.Irradiation.o: WeatherSensor/1.Irradiation/0.Irradiation.c  .generated_files/701190c6c90550eafec5646de72aeaf16729dddc.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/WeatherSensor/1.Irradiation" 
	@${RM} ${OBJECTDIR}/WeatherSensor/1.Irradiation/0.Irradiation.o.d 
	@${RM} ${OBJECTDIR}/WeatherSensor/1.Irradiation/0.Irradiation.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WeatherSensor/1.Irradiation/0.Irradiation.c  -o ${OBJECTDIR}/WeatherSensor/1.Irradiation/0.Irradiation.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WeatherSensor/1.Irradiation/0.Irradiation.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/WeatherSensor/1.Irradiation/1.RIKA_RK200_04.o: WeatherSensor/1.Irradiation/1.RIKA_RK200_04.c  .generated_files/e06a63252dc033dce7b07b5e02de4720b20e8ef7.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/WeatherSensor/1.Irradiation" 
	@${RM} ${OBJECTDIR}/WeatherSensor/1.Irradiation/1.RIKA_RK200_04.o.d 
	@${RM} ${OBJECTDIR}/WeatherSensor/1.Irradiation/1.RIKA_RK200_04.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WeatherSensor/1.Irradiation/1.RIKA_RK200_04.c  -o ${OBJECTDIR}/WeatherSensor/1.Irradiation/1.RIKA_RK200_04.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WeatherSensor/1.Irradiation/1.RIKA_RK200_04.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/WeatherSensor/2.Windirection/1.RIKA_RK110_01.o: WeatherSensor/2.Windirection/1.RIKA_RK110_01.c  .generated_files/b155b1748978c12ced1307df6dcd9c9afdad7b3a.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/WeatherSensor/2.Windirection" 
	@${RM} ${OBJECTDIR}/WeatherSensor/2.Windirection/1.RIKA_RK110_01.o.d 
	@${RM} ${OBJECTDIR}/WeatherSensor/2.Windirection/1.RIKA_RK110_01.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WeatherSensor/2.Windirection/1.RIKA_RK110_01.c  -o ${OBJECTDIR}/WeatherSensor/2.Windirection/1.RIKA_RK110_01.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WeatherSensor/2.Windirection/1.RIKA_RK110_01.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/WeatherSensor/3.WindSpeed/1.RIKA_RK100_01.o: WeatherSensor/3.WindSpeed/1.RIKA_RK100_01.c  .generated_files/5caa1adfb476973a2b19e9bc2e52c1baf31f97c.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/WeatherSensor/3.WindSpeed" 
	@${RM} ${OBJECTDIR}/WeatherSensor/3.WindSpeed/1.RIKA_RK100_01.o.d 
	@${RM} ${OBJECTDIR}/WeatherSensor/3.WindSpeed/1.RIKA_RK100_01.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WeatherSensor/3.WindSpeed/1.RIKA_RK100_01.c  -o ${OBJECTDIR}/WeatherSensor/3.WindSpeed/1.RIKA_RK100_01.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WeatherSensor/3.WindSpeed/1.RIKA_RK100_01.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/WeatherSensor/3.WindSpeed/0.Windspeed.o: WeatherSensor/3.WindSpeed/0.Windspeed.c  .generated_files/f84b5c84d43c0a975f0fe37cd80a81d555db821d.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/WeatherSensor/3.WindSpeed" 
	@${RM} ${OBJECTDIR}/WeatherSensor/3.WindSpeed/0.Windspeed.o.d 
	@${RM} ${OBJECTDIR}/WeatherSensor/3.WindSpeed/0.Windspeed.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WeatherSensor/3.WindSpeed/0.Windspeed.c  -o ${OBJECTDIR}/WeatherSensor/3.WindSpeed/0.Windspeed.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WeatherSensor/3.WindSpeed/0.Windspeed.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/WeatherSensor/2.Windirection/0.Winddirection.o: WeatherSensor/2.Windirection/0.Winddirection.c  .generated_files/4793fe9b9f62489b9abc059a11a2b80cb1845575.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/WeatherSensor/2.Windirection" 
	@${RM} ${OBJECTDIR}/WeatherSensor/2.Windirection/0.Winddirection.o.d 
	@${RM} ${OBJECTDIR}/WeatherSensor/2.Windirection/0.Winddirection.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WeatherSensor/2.Windirection/0.Winddirection.c  -o ${OBJECTDIR}/WeatherSensor/2.Windirection/0.Winddirection.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/WeatherSensor/2.Windirection/0.Winddirection.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o: Framework/tcpip/src/common/big_int_helper.S  .generated_files/9c6f67813a6c9441543cf786917cbfcbc22f16cb.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  Framework/tcpip/src/common/big_int_helper.S  -o ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o.d"  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
else
${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o: Framework/tcpip/src/common/big_int_helper.S  .generated_files/ce249d9ac227432f0bbc79f06098a77c808e2980.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  Framework/tcpip/src/common/big_int_helper.S  -o ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/4.2PV_Weather.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/4.2PV_Weather.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/4.2PV_Weather.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/4.2PV_Weather.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/4.2PV_Weather.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

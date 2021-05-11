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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/4.2-I_4.27_Setup.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/4.2-I_4.27_Setup.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/drivers/i2c_types.c mcc_generated_files/drivers/i2c_master.c mcc_generated_files/drivers/i2c_simple_master.c mcc_generated_files/uart3.c mcc_generated_files/reset.c mcc_generated_files/system.c mcc_generated_files/clock.c mcc_generated_files/traps.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/uart1.c mcc_generated_files/spi1.c mcc_generated_files/tmr2.c mcc_generated_files/EEPROM3_example.c mcc_generated_files/EEPROM3_driver.c mcc_generated_files/i2c2_driver.c mcc_generated_files/tmr3.c Modbus/ModbusRTU_Master.c Modbus/ModbusTCPServer.c Modbus/ModbusRTU_Slave.c Multile_Meter/0_DeviceEx.c Multile_Meter/1_SELEC_MFM384.c Multile_Meter/2_SELEC_EM368C.c Multile_Meter/3_Schneider_PM2120.c Multile_Meter/4_SELEC_MFM374.c Multile_Meter/6_MIKRO_DPM380_415AD.c Multile_Meter/5_TENSE_EM_07K.c Multile_Meter/7_MITSU_ME96SSRA_MB.c Framework/tcpip/src/common/arc4.c Framework/tcpip/src/common/big_int.c Framework/tcpip/src/common/delay.c Framework/tcpip/src/common/hashes.c Framework/tcpip/src/common/helpers.c Framework/tcpip/src/common/mpfs2.c Framework/tcpip/src/common/rsa.c Framework/tcpip/src/common/stack_task.c Framework/tcpip/src/common/tick.c Framework/tcpip/src/common/big_int_helper.S Framework/tcpip/src/arp.c Framework/tcpip/src/custom_ssl_cert.c Framework/tcpip/src/ddns.c Framework/tcpip/src/dhcp_client.c Framework/tcpip/src/dhcp_server.c Framework/tcpip/src/dns_client.c Framework/tcpip/src/dns_server.c Framework/tcpip/src/enc28j60.c Framework/tcpip/src/FTP.c Framework/tcpip/src/http2.c Framework/tcpip/src/icmp.c Framework/tcpip/src/ip.c Framework/tcpip/src/nbns.c Framework/tcpip/src/random.c Framework/tcpip/src/smtp.c Framework/tcpip/src/ssl.c Framework/tcpip/src/tcp.c Framework/tcpip/src/telnet.c Framework/tcpip/src/udp.c Framework/tcpip/src/announce.c main.c 4_2_Data.c user.c DS18B20x27.c DHT22.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o ${OBJECTDIR}/mcc_generated_files/uart3.o ${OBJECTDIR}/mcc_generated_files/reset.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/spi1.o ${OBJECTDIR}/mcc_generated_files/tmr2.o ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o ${OBJECTDIR}/mcc_generated_files/tmr3.o ${OBJECTDIR}/Modbus/ModbusRTU_Master.o ${OBJECTDIR}/Modbus/ModbusTCPServer.o ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o ${OBJECTDIR}/Multile_Meter/0_DeviceEx.o ${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o ${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o ${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o ${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o ${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o ${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o ${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o ${OBJECTDIR}/Framework/tcpip/src/common/delay.o ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o ${OBJECTDIR}/Framework/tcpip/src/common/tick.o ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o ${OBJECTDIR}/Framework/tcpip/src/arp.o ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o ${OBJECTDIR}/Framework/tcpip/src/ddns.o ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o ${OBJECTDIR}/Framework/tcpip/src/dns_client.o ${OBJECTDIR}/Framework/tcpip/src/dns_server.o ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o ${OBJECTDIR}/Framework/tcpip/src/FTP.o ${OBJECTDIR}/Framework/tcpip/src/http2.o ${OBJECTDIR}/Framework/tcpip/src/icmp.o ${OBJECTDIR}/Framework/tcpip/src/ip.o ${OBJECTDIR}/Framework/tcpip/src/nbns.o ${OBJECTDIR}/Framework/tcpip/src/random.o ${OBJECTDIR}/Framework/tcpip/src/smtp.o ${OBJECTDIR}/Framework/tcpip/src/ssl.o ${OBJECTDIR}/Framework/tcpip/src/tcp.o ${OBJECTDIR}/Framework/tcpip/src/telnet.o ${OBJECTDIR}/Framework/tcpip/src/udp.o ${OBJECTDIR}/Framework/tcpip/src/announce.o ${OBJECTDIR}/main.o ${OBJECTDIR}/4_2_Data.o ${OBJECTDIR}/user.o ${OBJECTDIR}/DS18B20x27.o ${OBJECTDIR}/DHT22.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d ${OBJECTDIR}/mcc_generated_files/uart3.o.d ${OBJECTDIR}/mcc_generated_files/reset.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/mcc_generated_files/spi1.o.d ${OBJECTDIR}/mcc_generated_files/tmr2.o.d ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o.d ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o.d ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d ${OBJECTDIR}/mcc_generated_files/tmr3.o.d ${OBJECTDIR}/Modbus/ModbusRTU_Master.o.d ${OBJECTDIR}/Modbus/ModbusTCPServer.o.d ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o.d ${OBJECTDIR}/Multile_Meter/0_DeviceEx.o.d ${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o.d ${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o.d ${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o.d ${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o.d ${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o.d ${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o.d ${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o.d ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o.d ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o.d ${OBJECTDIR}/Framework/tcpip/src/common/delay.o.d ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o.d ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o.d ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o.d ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o.d ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o.d ${OBJECTDIR}/Framework/tcpip/src/common/tick.o.d ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o.d ${OBJECTDIR}/Framework/tcpip/src/arp.o.d ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o.d ${OBJECTDIR}/Framework/tcpip/src/ddns.o.d ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o.d ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o.d ${OBJECTDIR}/Framework/tcpip/src/dns_client.o.d ${OBJECTDIR}/Framework/tcpip/src/dns_server.o.d ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o.d ${OBJECTDIR}/Framework/tcpip/src/FTP.o.d ${OBJECTDIR}/Framework/tcpip/src/http2.o.d ${OBJECTDIR}/Framework/tcpip/src/icmp.o.d ${OBJECTDIR}/Framework/tcpip/src/ip.o.d ${OBJECTDIR}/Framework/tcpip/src/nbns.o.d ${OBJECTDIR}/Framework/tcpip/src/random.o.d ${OBJECTDIR}/Framework/tcpip/src/smtp.o.d ${OBJECTDIR}/Framework/tcpip/src/ssl.o.d ${OBJECTDIR}/Framework/tcpip/src/tcp.o.d ${OBJECTDIR}/Framework/tcpip/src/telnet.o.d ${OBJECTDIR}/Framework/tcpip/src/udp.o.d ${OBJECTDIR}/Framework/tcpip/src/announce.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/4_2_Data.o.d ${OBJECTDIR}/user.o.d ${OBJECTDIR}/DS18B20x27.o.d ${OBJECTDIR}/DHT22.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o ${OBJECTDIR}/mcc_generated_files/uart3.o ${OBJECTDIR}/mcc_generated_files/reset.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/spi1.o ${OBJECTDIR}/mcc_generated_files/tmr2.o ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o ${OBJECTDIR}/mcc_generated_files/tmr3.o ${OBJECTDIR}/Modbus/ModbusRTU_Master.o ${OBJECTDIR}/Modbus/ModbusTCPServer.o ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o ${OBJECTDIR}/Multile_Meter/0_DeviceEx.o ${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o ${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o ${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o ${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o ${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o ${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o ${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o ${OBJECTDIR}/Framework/tcpip/src/common/delay.o ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o ${OBJECTDIR}/Framework/tcpip/src/common/tick.o ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o ${OBJECTDIR}/Framework/tcpip/src/arp.o ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o ${OBJECTDIR}/Framework/tcpip/src/ddns.o ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o ${OBJECTDIR}/Framework/tcpip/src/dns_client.o ${OBJECTDIR}/Framework/tcpip/src/dns_server.o ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o ${OBJECTDIR}/Framework/tcpip/src/FTP.o ${OBJECTDIR}/Framework/tcpip/src/http2.o ${OBJECTDIR}/Framework/tcpip/src/icmp.o ${OBJECTDIR}/Framework/tcpip/src/ip.o ${OBJECTDIR}/Framework/tcpip/src/nbns.o ${OBJECTDIR}/Framework/tcpip/src/random.o ${OBJECTDIR}/Framework/tcpip/src/smtp.o ${OBJECTDIR}/Framework/tcpip/src/ssl.o ${OBJECTDIR}/Framework/tcpip/src/tcp.o ${OBJECTDIR}/Framework/tcpip/src/telnet.o ${OBJECTDIR}/Framework/tcpip/src/udp.o ${OBJECTDIR}/Framework/tcpip/src/announce.o ${OBJECTDIR}/main.o ${OBJECTDIR}/4_2_Data.o ${OBJECTDIR}/user.o ${OBJECTDIR}/DS18B20x27.o ${OBJECTDIR}/DHT22.o

# Source Files
SOURCEFILES=mcc_generated_files/drivers/i2c_types.c mcc_generated_files/drivers/i2c_master.c mcc_generated_files/drivers/i2c_simple_master.c mcc_generated_files/uart3.c mcc_generated_files/reset.c mcc_generated_files/system.c mcc_generated_files/clock.c mcc_generated_files/traps.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/uart1.c mcc_generated_files/spi1.c mcc_generated_files/tmr2.c mcc_generated_files/EEPROM3_example.c mcc_generated_files/EEPROM3_driver.c mcc_generated_files/i2c2_driver.c mcc_generated_files/tmr3.c Modbus/ModbusRTU_Master.c Modbus/ModbusTCPServer.c Modbus/ModbusRTU_Slave.c Multile_Meter/0_DeviceEx.c Multile_Meter/1_SELEC_MFM384.c Multile_Meter/2_SELEC_EM368C.c Multile_Meter/3_Schneider_PM2120.c Multile_Meter/4_SELEC_MFM374.c Multile_Meter/6_MIKRO_DPM380_415AD.c Multile_Meter/5_TENSE_EM_07K.c Multile_Meter/7_MITSU_ME96SSRA_MB.c Framework/tcpip/src/common/arc4.c Framework/tcpip/src/common/big_int.c Framework/tcpip/src/common/delay.c Framework/tcpip/src/common/hashes.c Framework/tcpip/src/common/helpers.c Framework/tcpip/src/common/mpfs2.c Framework/tcpip/src/common/rsa.c Framework/tcpip/src/common/stack_task.c Framework/tcpip/src/common/tick.c Framework/tcpip/src/common/big_int_helper.S Framework/tcpip/src/arp.c Framework/tcpip/src/custom_ssl_cert.c Framework/tcpip/src/ddns.c Framework/tcpip/src/dhcp_client.c Framework/tcpip/src/dhcp_server.c Framework/tcpip/src/dns_client.c Framework/tcpip/src/dns_server.c Framework/tcpip/src/enc28j60.c Framework/tcpip/src/FTP.c Framework/tcpip/src/http2.c Framework/tcpip/src/icmp.c Framework/tcpip/src/ip.c Framework/tcpip/src/nbns.c Framework/tcpip/src/random.c Framework/tcpip/src/smtp.c Framework/tcpip/src/ssl.c Framework/tcpip/src/tcp.c Framework/tcpip/src/telnet.c Framework/tcpip/src/udp.c Framework/tcpip/src/announce.c main.c 4_2_Data.c user.c DS18B20x27.c DHT22.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/4.2-I_4.27_Setup.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33EP512MU810
MP_LINKER_FILE_OPTION=,--script=p33EP512MU810.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/4197f6718ecd32ba45e8ac65ea8c2f535ca2791.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_types.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/fe9af84c86f03c0daa6801dd9144785e3680d2d.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/c08ae577901512f304f0c103ed05cb71158f9dd0.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_simple_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/uart3.o: mcc_generated_files/uart3.c  .generated_files/3bb5b7e2d676028b5fc0eaf9310b9e6d4160b2fb.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart3.c  -o ${OBJECTDIR}/mcc_generated_files/uart3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart3.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/ce77e39c7a9e0a723a9815fd37d3c1de2302f4da.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/a8f76c387de102afbf5eb447a933339e4c997ac1.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/97482f1e79828427ad459fd6057c3f1063c9af70.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/cd207bc48f7af9343112a32225eaaabc4578d6c9.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/e234c058abcfeaf2eb707180240e9afeb09c8a6.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/d82ac86827699258b859b5341e3f8a8bd3ecf031.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/8cce0bce59e3309a8fd97d5b53c90ec0513f295.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/52d9a7412809bdb63067743dc0f0d51f81e89584.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/spi1.o: mcc_generated_files/spi1.c  .generated_files/d4443a056a0fddee7bc057e4242cb9c0ff24e74d.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1.c  -o ${OBJECTDIR}/mcc_generated_files/spi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/ebcdd277711d1041216fd4cdc6db9a161e48b9a0.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr2.c  -o ${OBJECTDIR}/mcc_generated_files/tmr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o: mcc_generated_files/EEPROM3_example.c  .generated_files/4a006f1de421b3263d53ee1b6cfaa0399331a8f5.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/EEPROM3_example.c  -o ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o: mcc_generated_files/EEPROM3_driver.c  .generated_files/2a45e11d980dab49149098216d031945738c593d.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/EEPROM3_driver.c  -o ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/i2c2_driver.o: mcc_generated_files/i2c2_driver.c  .generated_files/5c77c41adf85be84c31e9a10cb4735e1dede905a.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c2_driver.c  -o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/tmr3.o: mcc_generated_files/tmr3.c  .generated_files/954456ea69cbcb6c9be721ff1e48b893727f7d02.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr3.c  -o ${OBJECTDIR}/mcc_generated_files/tmr3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr3.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Modbus/ModbusRTU_Master.o: Modbus/ModbusRTU_Master.c  .generated_files/de5290fd4452eb82bd9cb64d1a72f04b6b72db35.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Modbus" 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Master.o.d 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Modbus/ModbusRTU_Master.c  -o ${OBJECTDIR}/Modbus/ModbusRTU_Master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Modbus/ModbusRTU_Master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Modbus/ModbusTCPServer.o: Modbus/ModbusTCPServer.c  .generated_files/1459e5bd623d8008651ae3246f9acdb48612604f.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Modbus" 
	@${RM} ${OBJECTDIR}/Modbus/ModbusTCPServer.o.d 
	@${RM} ${OBJECTDIR}/Modbus/ModbusTCPServer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Modbus/ModbusTCPServer.c  -o ${OBJECTDIR}/Modbus/ModbusTCPServer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Modbus/ModbusTCPServer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Modbus/ModbusRTU_Slave.o: Modbus/ModbusRTU_Slave.c  .generated_files/cfb35b6b1d8ad7d872ebe90410b115fe1c8db966.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Modbus" 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o.d 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Modbus/ModbusRTU_Slave.c  -o ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Modbus/ModbusRTU_Slave.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/0_DeviceEx.o: Multile_Meter/0_DeviceEx.c  .generated_files/d3466722d1aa1143aa9ca2ff32eaf0aa32973571.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/0_DeviceEx.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/0_DeviceEx.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/0_DeviceEx.c  -o ${OBJECTDIR}/Multile_Meter/0_DeviceEx.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/0_DeviceEx.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o: Multile_Meter/1_SELEC_MFM384.c  .generated_files/c12a20e6296588c22aa1b3a3eead88af794ce762.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/1_SELEC_MFM384.c  -o ${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o: Multile_Meter/2_SELEC_EM368C.c  .generated_files/aab9e84822a23782127f0124de782c2f68b83a9.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/2_SELEC_EM368C.c  -o ${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o: Multile_Meter/3_Schneider_PM2120.c  .generated_files/19acc359fca6f5921ecd91b9b4e8d2f0ec358888.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/3_Schneider_PM2120.c  -o ${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o: Multile_Meter/4_SELEC_MFM374.c  .generated_files/c609e3e6c8f3352ff8159ef750a224e48dcefbcb.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/4_SELEC_MFM374.c  -o ${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o: Multile_Meter/6_MIKRO_DPM380_415AD.c  .generated_files/c54fc9e9d8ef2eb0122246f10ad20b887c9e54fd.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/6_MIKRO_DPM380_415AD.c  -o ${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o: Multile_Meter/5_TENSE_EM_07K.c  .generated_files/9f6eb01bdf4735c11900404b08ef87a7235f5c0a.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/5_TENSE_EM_07K.c  -o ${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o: Multile_Meter/7_MITSU_ME96SSRA_MB.c  .generated_files/9f9424b1fdca939425b925a477486b9e276ad8cf.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/7_MITSU_ME96SSRA_MB.c  -o ${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/arc4.o: Framework/tcpip/src/common/arc4.c  .generated_files/5f908f5d7af1d64598909f6133b89a5b12cde418.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/arc4.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/arc4.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/big_int.o: Framework/tcpip/src/common/big_int.c  .generated_files/1543cd8fe6d3ca8194a0999c40a8204654dd87f.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/big_int.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/big_int.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/delay.o: Framework/tcpip/src/common/delay.c  .generated_files/b6f131724317201cfead34d238ac9101bafa37fb.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/delay.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/delay.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/delay.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/hashes.o: Framework/tcpip/src/common/hashes.c  .generated_files/44c759d945fd1c43af2fe27bba975c4fed28f351.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/hashes.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/hashes.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/helpers.o: Framework/tcpip/src/common/helpers.c  .generated_files/916e9fc5c8a1e70fd32f7478ae1bf31d7617452e.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/helpers.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/helpers.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o: Framework/tcpip/src/common/mpfs2.c  .generated_files/22cb0f6b6c92b006a372e4eca1e8b13a262a14e6.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/mpfs2.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/rsa.o: Framework/tcpip/src/common/rsa.c  .generated_files/b47dfa2232238c7ad99013dcbe43ce5ba4301a67.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/rsa.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/rsa.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o: Framework/tcpip/src/common/stack_task.c  .generated_files/bf5f91dc0e3fd57d62ce054c822313d71e7e7d5.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/stack_task.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/tick.o: Framework/tcpip/src/common/tick.c  .generated_files/63daabc803ef86bc70de4509dc00124c8447d865.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/tick.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/tick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/tick.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/tick.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/tick.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/arp.o: Framework/tcpip/src/arp.c  .generated_files/2a9f3bbd2ed2919c8b7d3dc211547ea72c19bcb9.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/arp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/arp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/arp.c  -o ${OBJECTDIR}/Framework/tcpip/src/arp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/arp.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o: Framework/tcpip/src/custom_ssl_cert.c  .generated_files/fd4d2b2018f381556eee2345c8fd98bae4147b4e.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/custom_ssl_cert.c  -o ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/ddns.o: Framework/tcpip/src/ddns.c  .generated_files/b5ee57a3b69c002ae4e48e1c79b96252bda91c9f.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ddns.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ddns.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/ddns.c  -o ${OBJECTDIR}/Framework/tcpip/src/ddns.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/ddns.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o: Framework/tcpip/src/dhcp_client.c  .generated_files/ca9b91fbd4f290de2eb580d80306fe1735a9353f.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dhcp_client.c  -o ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o: Framework/tcpip/src/dhcp_server.c  .generated_files/8efd357c59a70ae7f15084ee7fc3de2ae5338fc8.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dhcp_server.c  -o ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dns_client.o: Framework/tcpip/src/dns_client.c  .generated_files/1723852490399e29f5a1063ac0532dcd1cecbbab.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_client.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dns_client.c  -o ${OBJECTDIR}/Framework/tcpip/src/dns_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dns_client.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dns_server.o: Framework/tcpip/src/dns_server.c  .generated_files/322bc0459bfb8e61610ad178e07520c9fe011e03.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_server.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dns_server.c  -o ${OBJECTDIR}/Framework/tcpip/src/dns_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dns_server.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/enc28j60.o: Framework/tcpip/src/enc28j60.c  .generated_files/52af1ced04f3a24d39d7879ffb1144d171f476ab.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/enc28j60.c  -o ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/enc28j60.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/FTP.o: Framework/tcpip/src/FTP.c  .generated_files/8359fe5e9475548dfe58f56c4d94cdbb23cd674f.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/FTP.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/FTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/FTP.c  -o ${OBJECTDIR}/Framework/tcpip/src/FTP.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/FTP.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/http2.o: Framework/tcpip/src/http2.c  .generated_files/95fa5dc229960aae0ea148ae4bf09d54f4222295.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/http2.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/http2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/http2.c  -o ${OBJECTDIR}/Framework/tcpip/src/http2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/http2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/icmp.o: Framework/tcpip/src/icmp.c  .generated_files/6803846e2a5c7f97af0a720ca9dd7152328d85df.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/icmp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/icmp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/icmp.c  -o ${OBJECTDIR}/Framework/tcpip/src/icmp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/icmp.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/ip.o: Framework/tcpip/src/ip.c  .generated_files/7287c68153bfaaf4799e11c814207b0fa907b4f4.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ip.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ip.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/ip.c  -o ${OBJECTDIR}/Framework/tcpip/src/ip.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/ip.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/nbns.o: Framework/tcpip/src/nbns.c  .generated_files/fc1e5a65c41b0ca0b5b1f1a2292be1bd8ed28d59.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/nbns.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/nbns.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/nbns.c  -o ${OBJECTDIR}/Framework/tcpip/src/nbns.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/nbns.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/random.o: Framework/tcpip/src/random.c  .generated_files/c926417226deeb7f360496d41ce7daac597975ee.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/random.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/random.c  -o ${OBJECTDIR}/Framework/tcpip/src/random.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/random.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/smtp.o: Framework/tcpip/src/smtp.c  .generated_files/80f30f5cd0b81ad56bbe285541e27f7ef4224a79.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/smtp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/smtp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/smtp.c  -o ${OBJECTDIR}/Framework/tcpip/src/smtp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/smtp.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/ssl.o: Framework/tcpip/src/ssl.c  .generated_files/918aeedc245abd37edd85a2cbfac45fac12dc934.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ssl.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/ssl.c  -o ${OBJECTDIR}/Framework/tcpip/src/ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/ssl.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/tcp.o: Framework/tcpip/src/tcp.c  .generated_files/8c65f5fb487eca2e86ea5db3eeaa234ffb0af.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/tcp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/tcp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/tcp.c  -o ${OBJECTDIR}/Framework/tcpip/src/tcp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/tcp.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/telnet.o: Framework/tcpip/src/telnet.c  .generated_files/941f8fe87a38d9ab6ae22eb8ad2a521fd01fd0b0.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/telnet.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/telnet.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/telnet.c  -o ${OBJECTDIR}/Framework/tcpip/src/telnet.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/telnet.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/udp.o: Framework/tcpip/src/udp.c  .generated_files/9a12acbf19902a3d065d102ac67d3a25ebd535c6.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/udp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/udp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/udp.c  -o ${OBJECTDIR}/Framework/tcpip/src/udp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/udp.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/announce.o: Framework/tcpip/src/announce.c  .generated_files/28d9f3d1cfc16ec70af990d5fb6c93d031619c9d.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/announce.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/announce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/announce.c  -o ${OBJECTDIR}/Framework/tcpip/src/announce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/announce.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/main.o: main.c  .generated_files/837004479af538cfb12c3296c5e9e855b7e1f984.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/4_2_Data.o: 4_2_Data.c  .generated_files/e6bc56876bdda8008066edfe07cad87e72a32503.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/4_2_Data.o.d 
	@${RM} ${OBJECTDIR}/4_2_Data.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  4_2_Data.c  -o ${OBJECTDIR}/4_2_Data.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/4_2_Data.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/user.o: user.c  .generated_files/5401c1c318388ed4c04f6da5eb155090b7bd5b54.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/user.o.d 
	@${RM} ${OBJECTDIR}/user.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  user.c  -o ${OBJECTDIR}/user.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/user.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/DS18B20x27.o: DS18B20x27.c  .generated_files/a6fdf26744cd82fbbb4067fb12d084b3c58dd276.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DS18B20x27.o.d 
	@${RM} ${OBJECTDIR}/DS18B20x27.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DS18B20x27.c  -o ${OBJECTDIR}/DS18B20x27.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/DS18B20x27.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/DHT22.o: DHT22.c  .generated_files/6233c78ac08eb29b19c4e944e37b244dce191172.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DHT22.o.d 
	@${RM} ${OBJECTDIR}/DHT22.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DHT22.c  -o ${OBJECTDIR}/DHT22.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/DHT22.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
else
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/f02462620bce68b916b40dcf2fa56a99e4708264.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_types.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/b8967285a797ea316c433bf2d9c5d7f28d885d23.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/6d24ad52ff10fa738d0de2775cb8dae7fa8f7bd9.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_simple_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/uart3.o: mcc_generated_files/uart3.c  .generated_files/4f48fcec1dd79f8bcf987789974447d983dcefd0.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart3.c  -o ${OBJECTDIR}/mcc_generated_files/uart3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart3.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/ec268ccc98819828ec496d4ea606dac79420db15.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/6435c602ce69784ef282b5121852a5995710e472.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/e1b8a38ae6e5033116144033d741ec3beca0031a.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/6dbdd9d3faa3545d1315c127f8af5a663b48fa46.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/4ca76676d1b30704e5b97b8e04a1523b22321aec.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/b9f1f1c5934c038632101c9981b378745ddcaf68.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/e0efc676a7375e57789487ab663155f641c8f7c8.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/72db2164e87091ede4fee5ccfa50bdf32a5fe23c.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/spi1.o: mcc_generated_files/spi1.c  .generated_files/f3ae1334eec1398b97509ce16324818ba8987b72.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1.c  -o ${OBJECTDIR}/mcc_generated_files/spi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/826ba376fbcb272a3295e8537e08386bebd14650.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr2.c  -o ${OBJECTDIR}/mcc_generated_files/tmr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o: mcc_generated_files/EEPROM3_example.c  .generated_files/5e1a524890daccf2498350f45435554fa9a91913.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/EEPROM3_example.c  -o ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o: mcc_generated_files/EEPROM3_driver.c  .generated_files/ea33b1e62224eea165ff74ee8d59c98cf49d7629.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/EEPROM3_driver.c  -o ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/i2c2_driver.o: mcc_generated_files/i2c2_driver.c  .generated_files/64e657d23584aee254660b3e68bedbe59f664332.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c2_driver.c  -o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/tmr3.o: mcc_generated_files/tmr3.c  .generated_files/9d5c5296c2aef4fc9c1f00bc86aa0160aaf458fc.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr3.c  -o ${OBJECTDIR}/mcc_generated_files/tmr3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr3.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Modbus/ModbusRTU_Master.o: Modbus/ModbusRTU_Master.c  .generated_files/fadc2a9b015adc521a0be098fd1a2627e765d45c.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Modbus" 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Master.o.d 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Modbus/ModbusRTU_Master.c  -o ${OBJECTDIR}/Modbus/ModbusRTU_Master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Modbus/ModbusRTU_Master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Modbus/ModbusTCPServer.o: Modbus/ModbusTCPServer.c  .generated_files/eb98974704b25caf3319b1c4ac447bc765541d8.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Modbus" 
	@${RM} ${OBJECTDIR}/Modbus/ModbusTCPServer.o.d 
	@${RM} ${OBJECTDIR}/Modbus/ModbusTCPServer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Modbus/ModbusTCPServer.c  -o ${OBJECTDIR}/Modbus/ModbusTCPServer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Modbus/ModbusTCPServer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Modbus/ModbusRTU_Slave.o: Modbus/ModbusRTU_Slave.c  .generated_files/d5ddffe0934f005eca36dcfc4827b3f092ddb0cd.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Modbus" 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o.d 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Modbus/ModbusRTU_Slave.c  -o ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Modbus/ModbusRTU_Slave.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/0_DeviceEx.o: Multile_Meter/0_DeviceEx.c  .generated_files/15be4fafa6f3993c71d9489ea7f471166f88d15f.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/0_DeviceEx.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/0_DeviceEx.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/0_DeviceEx.c  -o ${OBJECTDIR}/Multile_Meter/0_DeviceEx.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/0_DeviceEx.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o: Multile_Meter/1_SELEC_MFM384.c  .generated_files/5e34780f301d6b54a8749b242c1758e652cc15d2.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/1_SELEC_MFM384.c  -o ${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o: Multile_Meter/2_SELEC_EM368C.c  .generated_files/7cce4916370ecb0f4c15dbb573faa304ba383299.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/2_SELEC_EM368C.c  -o ${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o: Multile_Meter/3_Schneider_PM2120.c  .generated_files/36912fa04c04d98c44dace087714e79e6f2e2751.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/3_Schneider_PM2120.c  -o ${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o: Multile_Meter/4_SELEC_MFM374.c  .generated_files/3cb61c291f6464a26719990f33b432884d1ff284.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/4_SELEC_MFM374.c  -o ${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o: Multile_Meter/6_MIKRO_DPM380_415AD.c  .generated_files/8dcf278070f31c16cbd79b8b522b6cd60e335867.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/6_MIKRO_DPM380_415AD.c  -o ${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o: Multile_Meter/5_TENSE_EM_07K.c  .generated_files/19f830b866aa3ab4fd333e69c7767eda2503e5d4.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/5_TENSE_EM_07K.c  -o ${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o: Multile_Meter/7_MITSU_ME96SSRA_MB.c  .generated_files/a127bf08815dfa7121b911f196c3902ec806ebd4.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/7_MITSU_ME96SSRA_MB.c  -o ${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/arc4.o: Framework/tcpip/src/common/arc4.c  .generated_files/95b88d00c7178f7af2e33bdd2950850006502368.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/arc4.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/arc4.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/big_int.o: Framework/tcpip/src/common/big_int.c  .generated_files/8c9b9e304a64f34f615c7d2e1ad7932edb6aede7.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/big_int.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/big_int.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/delay.o: Framework/tcpip/src/common/delay.c  .generated_files/8dca2945929e7fa8614995bc0b1a01dd82b199dd.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/delay.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/delay.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/delay.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/hashes.o: Framework/tcpip/src/common/hashes.c  .generated_files/41226f39b975263ea4e7e0295a9d1c82e41690ab.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/hashes.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/hashes.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/helpers.o: Framework/tcpip/src/common/helpers.c  .generated_files/f7c814d7f99793ea66ec6689be120ae523b5b88b.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/helpers.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/helpers.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o: Framework/tcpip/src/common/mpfs2.c  .generated_files/78eb274fbf712498e5b31c6b51498f204aaa11b9.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/mpfs2.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/rsa.o: Framework/tcpip/src/common/rsa.c  .generated_files/458d9374e9e64395dd86024bfee99551d00246ba.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/rsa.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/rsa.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o: Framework/tcpip/src/common/stack_task.c  .generated_files/5ccf1ca7c606f67daba0021476525345458756f1.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/stack_task.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/tick.o: Framework/tcpip/src/common/tick.c  .generated_files/2dbc4a2e84ed62df609e45293498631dbc960c47.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/tick.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/tick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/tick.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/tick.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/tick.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/arp.o: Framework/tcpip/src/arp.c  .generated_files/f5499a80a7a9af00172e86b3a3c7069eac2d3068.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/arp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/arp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/arp.c  -o ${OBJECTDIR}/Framework/tcpip/src/arp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/arp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o: Framework/tcpip/src/custom_ssl_cert.c  .generated_files/f9df9495592f4b042ff6919d4886d6962c8750eb.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/custom_ssl_cert.c  -o ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/ddns.o: Framework/tcpip/src/ddns.c  .generated_files/55afc2bf7c0c6dea97b977176851ff0579f268e7.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ddns.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ddns.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/ddns.c  -o ${OBJECTDIR}/Framework/tcpip/src/ddns.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/ddns.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o: Framework/tcpip/src/dhcp_client.c  .generated_files/3d12c6c72299064e773f56a4e02c8f79c51bd30e.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dhcp_client.c  -o ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o: Framework/tcpip/src/dhcp_server.c  .generated_files/1fc139bc94ab516a5afc9aa2dd2f1d29964dcb9b.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dhcp_server.c  -o ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dns_client.o: Framework/tcpip/src/dns_client.c  .generated_files/867a85feca652f94b83e3e3a1cf83f90bfa23347.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_client.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dns_client.c  -o ${OBJECTDIR}/Framework/tcpip/src/dns_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dns_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dns_server.o: Framework/tcpip/src/dns_server.c  .generated_files/d211f64ec8687ac3b108898d97527ca317b2d5f5.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_server.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dns_server.c  -o ${OBJECTDIR}/Framework/tcpip/src/dns_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dns_server.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/enc28j60.o: Framework/tcpip/src/enc28j60.c  .generated_files/b6b6b4954147d66f4adb9bfdd712c122125de86f.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/enc28j60.c  -o ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/enc28j60.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/FTP.o: Framework/tcpip/src/FTP.c  .generated_files/99fb9456e6866941759ec01883f7c53529dd64da.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/FTP.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/FTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/FTP.c  -o ${OBJECTDIR}/Framework/tcpip/src/FTP.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/FTP.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/http2.o: Framework/tcpip/src/http2.c  .generated_files/e3acb8f3701bcb35e33e177e8b229b2569dcdf43.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/http2.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/http2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/http2.c  -o ${OBJECTDIR}/Framework/tcpip/src/http2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/http2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/icmp.o: Framework/tcpip/src/icmp.c  .generated_files/730c696237ccc7f60ee11b8dc96d8b1765cf6f01.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/icmp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/icmp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/icmp.c  -o ${OBJECTDIR}/Framework/tcpip/src/icmp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/icmp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/ip.o: Framework/tcpip/src/ip.c  .generated_files/e432445f89d23a92e991452b3de4b34417de9aae.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ip.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ip.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/ip.c  -o ${OBJECTDIR}/Framework/tcpip/src/ip.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/ip.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/nbns.o: Framework/tcpip/src/nbns.c  .generated_files/9190a05e7aca1b45857a18c48844c076f585e3aa.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/nbns.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/nbns.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/nbns.c  -o ${OBJECTDIR}/Framework/tcpip/src/nbns.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/nbns.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/random.o: Framework/tcpip/src/random.c  .generated_files/68662b3bc2faf43b46a166af3e6698515a197a57.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/random.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/random.c  -o ${OBJECTDIR}/Framework/tcpip/src/random.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/random.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/smtp.o: Framework/tcpip/src/smtp.c  .generated_files/d07250c6fdb7ca936e81aef04b3361dbe4627a68.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/smtp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/smtp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/smtp.c  -o ${OBJECTDIR}/Framework/tcpip/src/smtp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/smtp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/ssl.o: Framework/tcpip/src/ssl.c  .generated_files/16c2c92808ad3b4ce8df768f6ff5592b738bd907.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ssl.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/ssl.c  -o ${OBJECTDIR}/Framework/tcpip/src/ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/ssl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/tcp.o: Framework/tcpip/src/tcp.c  .generated_files/83b8439893a86cd96d3d8594cbd089662dc83c09.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/tcp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/tcp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/tcp.c  -o ${OBJECTDIR}/Framework/tcpip/src/tcp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/tcp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/telnet.o: Framework/tcpip/src/telnet.c  .generated_files/f24795e23bf8e570e0c3679f03bb6854dc40473b.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/telnet.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/telnet.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/telnet.c  -o ${OBJECTDIR}/Framework/tcpip/src/telnet.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/telnet.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/udp.o: Framework/tcpip/src/udp.c  .generated_files/8afa8ef2dd3c50ff88f022eebb8efc25193c8e6b.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/udp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/udp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/udp.c  -o ${OBJECTDIR}/Framework/tcpip/src/udp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/udp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/announce.o: Framework/tcpip/src/announce.c  .generated_files/71d76c501c2d36b7738ea11f69558599615454b5.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/announce.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/announce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/announce.c  -o ${OBJECTDIR}/Framework/tcpip/src/announce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/announce.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/main.o: main.c  .generated_files/459a19dd08c091f3efffe721181920192cb0e5fb.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/4_2_Data.o: 4_2_Data.c  .generated_files/5b5051a58f38435bcaea322d1ef9f7ed08647aa7.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/4_2_Data.o.d 
	@${RM} ${OBJECTDIR}/4_2_Data.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  4_2_Data.c  -o ${OBJECTDIR}/4_2_Data.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/4_2_Data.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/user.o: user.c  .generated_files/288c2725e93233a6c760b9f01de08217df1f6f47.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/user.o.d 
	@${RM} ${OBJECTDIR}/user.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  user.c  -o ${OBJECTDIR}/user.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/user.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/DS18B20x27.o: DS18B20x27.c  .generated_files/e1e1449dc33ca80138c1fb4dff4d1b1c0e998f1a.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DS18B20x27.o.d 
	@${RM} ${OBJECTDIR}/DS18B20x27.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DS18B20x27.c  -o ${OBJECTDIR}/DS18B20x27.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/DS18B20x27.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/DHT22.o: DHT22.c  .generated_files/391a08693de75473b60480a177e8bf00872fb39.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DHT22.o.d 
	@${RM} ${OBJECTDIR}/DHT22.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DHT22.c  -o ${OBJECTDIR}/DHT22.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/DHT22.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o: Framework/tcpip/src/common/big_int_helper.S  .generated_files/6df318acca3ea84129fccdd0d03aa0ccde3be8a0.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  Framework/tcpip/src/common/big_int_helper.S  -o ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o.d"  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
else
${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o: Framework/tcpip/src/common/big_int_helper.S  .generated_files/8236632e09633b3cd84195dd575da5c43db740b3.flag .generated_files/bf1f80e92fa5a949fe4260b520a0a6528f89acac.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  Framework/tcpip/src/common/big_int_helper.S  -o ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/4.2-I_4.27_Setup.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/4.2-I_4.27_Setup.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/4.2-I_4.27_Setup.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/4.2-I_4.27_Setup.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/4.2-I_4.27_Setup.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   
	
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

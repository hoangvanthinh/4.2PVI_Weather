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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/4.2-LI.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/4.2-LI.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/4.2-LI.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33EP512MU810
MP_LINKER_FILE_OPTION=,--script=p33EP512MU810.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/b536592b9b93a80eeafeb3436d8b11730d004b3d.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_types.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/8989d69c69a90dd9b7e2d8e6e4c9c4d7875192ff.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/7b641866a97b962d1509706f3c640f18709c2570.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_simple_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/uart3.o: mcc_generated_files/uart3.c  .generated_files/f99b89133b51d74bc21705174d9842834824f6ff.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart3.c  -o ${OBJECTDIR}/mcc_generated_files/uart3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart3.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/2594deebbfc6c4104f95691387d4c38fce96c596.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/582d6871b0279f266f6ce090ae139003156cd267.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/844a1013eb19b61d3277f8ac4df3b7d3c0d407af.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/741d3e6515d6ab3179f4b55e3ca13075fb18861d.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/f9938c044e062e8f52bf54e926eb599934d6a402.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/a3c9ec4b6d167d5b94cf0f1a2bdb57abc48ca813.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/24e072c0870e176e9d7c5084abcd89a9165e36ec.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/96ea807e8620edd01cae22185add8be9dd91c3a3.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/spi1.o: mcc_generated_files/spi1.c  .generated_files/b963c39e638b99422fda5484c95827718018e80d.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1.c  -o ${OBJECTDIR}/mcc_generated_files/spi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/badaf5ee567c38f0e81e9a20c5d36d0ea76102ca.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr2.c  -o ${OBJECTDIR}/mcc_generated_files/tmr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o: mcc_generated_files/EEPROM3_example.c  .generated_files/26fdeb47073ddaf5ab08aa59e2340ad1e48ef08b.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/EEPROM3_example.c  -o ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o: mcc_generated_files/EEPROM3_driver.c  .generated_files/667d1a4756d371f99d030b6603e60f17f17df899.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/EEPROM3_driver.c  -o ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/i2c2_driver.o: mcc_generated_files/i2c2_driver.c  .generated_files/eb6cfb49b317ef2b59a456aaa09dac60337dd45f.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c2_driver.c  -o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/tmr3.o: mcc_generated_files/tmr3.c  .generated_files/e397ca8a7c0e3905f8284dbc61c6ab14333eaa54.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr3.c  -o ${OBJECTDIR}/mcc_generated_files/tmr3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr3.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Modbus/ModbusRTU_Master.o: Modbus/ModbusRTU_Master.c  .generated_files/9167496e8b213c332facd29ffacdbe516b39e1ce.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Modbus" 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Master.o.d 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Modbus/ModbusRTU_Master.c  -o ${OBJECTDIR}/Modbus/ModbusRTU_Master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Modbus/ModbusRTU_Master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Modbus/ModbusTCPServer.o: Modbus/ModbusTCPServer.c  .generated_files/e1177b1007fe375c8d66b2b730a072057346356e.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Modbus" 
	@${RM} ${OBJECTDIR}/Modbus/ModbusTCPServer.o.d 
	@${RM} ${OBJECTDIR}/Modbus/ModbusTCPServer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Modbus/ModbusTCPServer.c  -o ${OBJECTDIR}/Modbus/ModbusTCPServer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Modbus/ModbusTCPServer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Modbus/ModbusRTU_Slave.o: Modbus/ModbusRTU_Slave.c  .generated_files/154c2833e54d5349330433352814d0d68ee40172.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Modbus" 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o.d 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Modbus/ModbusRTU_Slave.c  -o ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Modbus/ModbusRTU_Slave.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/0_DeviceEx.o: Multile_Meter/0_DeviceEx.c  .generated_files/602d6b7bc92f620b3f65140fbf470727e904c420.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/0_DeviceEx.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/0_DeviceEx.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/0_DeviceEx.c  -o ${OBJECTDIR}/Multile_Meter/0_DeviceEx.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/0_DeviceEx.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o: Multile_Meter/1_SELEC_MFM384.c  .generated_files/f45aa96825cbf6414e40d1582f70495441e700b7.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/1_SELEC_MFM384.c  -o ${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o: Multile_Meter/2_SELEC_EM368C.c  .generated_files/29c17f00d46c9760bd98d3e07d345aeff4f4387.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/2_SELEC_EM368C.c  -o ${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o: Multile_Meter/3_Schneider_PM2120.c  .generated_files/15e8250b9a8279da8c206100d2ba226c11d84618.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/3_Schneider_PM2120.c  -o ${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o: Multile_Meter/4_SELEC_MFM374.c  .generated_files/e0b6d0b1bb70840cc44ceec71f3755b0170c5f35.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/4_SELEC_MFM374.c  -o ${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o: Multile_Meter/6_MIKRO_DPM380_415AD.c  .generated_files/62e487c3caa098afb19ee4a7c8ac870eb64a4753.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/6_MIKRO_DPM380_415AD.c  -o ${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o: Multile_Meter/5_TENSE_EM_07K.c  .generated_files/58cab6aafad326d49eb0186981a31a7be0b943a2.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/5_TENSE_EM_07K.c  -o ${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o: Multile_Meter/7_MITSU_ME96SSRA_MB.c  .generated_files/9235e06144cd130fba310a270b5a4d8e271dd13c.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/7_MITSU_ME96SSRA_MB.c  -o ${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/arc4.o: Framework/tcpip/src/common/arc4.c  .generated_files/6d25408602ea6204571847302e6c27f697623c37.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/arc4.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/arc4.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/big_int.o: Framework/tcpip/src/common/big_int.c  .generated_files/19852635c98755f40bd38b9756a20eef66c0caff.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/big_int.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/big_int.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/delay.o: Framework/tcpip/src/common/delay.c  .generated_files/28d0951d4f92df7a19679cb341631bb65ffaaa17.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/delay.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/delay.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/delay.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/hashes.o: Framework/tcpip/src/common/hashes.c  .generated_files/24fb5987874a1bc5e8ef7fbe4bdc95383957d7dc.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/hashes.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/hashes.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/helpers.o: Framework/tcpip/src/common/helpers.c  .generated_files/70f17d3ead9fa6126783feb5b933f8b373eb31a8.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/helpers.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/helpers.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o: Framework/tcpip/src/common/mpfs2.c  .generated_files/f35957e3a412a7546d6316c836e574515305437d.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/mpfs2.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/rsa.o: Framework/tcpip/src/common/rsa.c  .generated_files/9fc5f23be7f360752c889ed6a0b8cf43efb24bfa.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/rsa.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/rsa.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o: Framework/tcpip/src/common/stack_task.c  .generated_files/c6e52e65d57fc3df4d7fc219a837a5d5edbef338.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/stack_task.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/tick.o: Framework/tcpip/src/common/tick.c  .generated_files/a5aba6ae11a3014db099a55755a098be27789c79.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/tick.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/tick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/tick.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/tick.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/tick.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/arp.o: Framework/tcpip/src/arp.c  .generated_files/403321622fb4012f2db355244e382bc82adf63dc.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/arp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/arp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/arp.c  -o ${OBJECTDIR}/Framework/tcpip/src/arp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/arp.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o: Framework/tcpip/src/custom_ssl_cert.c  .generated_files/6d673bcd94b4acaa527d72d397517aed6819bb7.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/custom_ssl_cert.c  -o ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/ddns.o: Framework/tcpip/src/ddns.c  .generated_files/9c286886e15798dd65196f18cc90880a4aa6c0d7.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ddns.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ddns.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/ddns.c  -o ${OBJECTDIR}/Framework/tcpip/src/ddns.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/ddns.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o: Framework/tcpip/src/dhcp_client.c  .generated_files/54b91c12a98fbcffffdb79d22d72b7ffe2207b8.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dhcp_client.c  -o ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o: Framework/tcpip/src/dhcp_server.c  .generated_files/a1db777cfbaa85c2a719b9d1bfe04ce229ec3c15.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dhcp_server.c  -o ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dns_client.o: Framework/tcpip/src/dns_client.c  .generated_files/20ec4f83295e3e3c006f6c1c2fce6e80a96de0f2.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_client.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dns_client.c  -o ${OBJECTDIR}/Framework/tcpip/src/dns_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dns_client.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dns_server.o: Framework/tcpip/src/dns_server.c  .generated_files/7639409bdcb3ca6c997f5b9b6732dc9dac0ef361.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_server.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dns_server.c  -o ${OBJECTDIR}/Framework/tcpip/src/dns_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dns_server.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/enc28j60.o: Framework/tcpip/src/enc28j60.c  .generated_files/4ac288e4d5f63ebae7a3df9b1662ff24754abb8d.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/enc28j60.c  -o ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/enc28j60.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/FTP.o: Framework/tcpip/src/FTP.c  .generated_files/de7c3a1bc9d1a2f20bbfa6bc836a98a910af8c17.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/FTP.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/FTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/FTP.c  -o ${OBJECTDIR}/Framework/tcpip/src/FTP.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/FTP.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/http2.o: Framework/tcpip/src/http2.c  .generated_files/51d2546efc90e240923d8168463979d2cd8b10ae.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/http2.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/http2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/http2.c  -o ${OBJECTDIR}/Framework/tcpip/src/http2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/http2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/icmp.o: Framework/tcpip/src/icmp.c  .generated_files/72cf27a01dc83a76cf1cdfc624c540a20716c3ae.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/icmp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/icmp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/icmp.c  -o ${OBJECTDIR}/Framework/tcpip/src/icmp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/icmp.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/ip.o: Framework/tcpip/src/ip.c  .generated_files/38c892cf2565fe462d68c5e5743c21e58d3258df.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ip.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ip.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/ip.c  -o ${OBJECTDIR}/Framework/tcpip/src/ip.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/ip.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/nbns.o: Framework/tcpip/src/nbns.c  .generated_files/426b2cfd5b106602e143af79f7fba29ac55992e6.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/nbns.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/nbns.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/nbns.c  -o ${OBJECTDIR}/Framework/tcpip/src/nbns.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/nbns.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/random.o: Framework/tcpip/src/random.c  .generated_files/362650a1feb28b4d80793e9c000179014d9d8205.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/random.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/random.c  -o ${OBJECTDIR}/Framework/tcpip/src/random.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/random.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/smtp.o: Framework/tcpip/src/smtp.c  .generated_files/180465a6e5007094cf64e26a6ea3075c0ff3d056.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/smtp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/smtp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/smtp.c  -o ${OBJECTDIR}/Framework/tcpip/src/smtp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/smtp.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/ssl.o: Framework/tcpip/src/ssl.c  .generated_files/87375208ad5fb63443bfdd9e896bc5df8a5c7caf.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ssl.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/ssl.c  -o ${OBJECTDIR}/Framework/tcpip/src/ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/ssl.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/tcp.o: Framework/tcpip/src/tcp.c  .generated_files/75fb62162bd4b9fd66ec3b2ddbc756b624aa11a1.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/tcp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/tcp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/tcp.c  -o ${OBJECTDIR}/Framework/tcpip/src/tcp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/tcp.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/telnet.o: Framework/tcpip/src/telnet.c  .generated_files/d81d37506a6d3cb79f6650394af90e390d32a7c4.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/telnet.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/telnet.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/telnet.c  -o ${OBJECTDIR}/Framework/tcpip/src/telnet.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/telnet.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/udp.o: Framework/tcpip/src/udp.c  .generated_files/38e4e815381d8001bbfc94a7763b466255a881c3.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/udp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/udp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/udp.c  -o ${OBJECTDIR}/Framework/tcpip/src/udp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/udp.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/announce.o: Framework/tcpip/src/announce.c  .generated_files/75729abd845b0308eb155d8d941a9bea05d723e3.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/announce.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/announce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/announce.c  -o ${OBJECTDIR}/Framework/tcpip/src/announce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/announce.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/main.o: main.c  .generated_files/e8a3bfb3dc546bcb59c5696ea8210a3317c97780.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/4_2_Data.o: 4_2_Data.c  .generated_files/a289d16245540bf0a454b8842c78ae62c07cc00b.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/4_2_Data.o.d 
	@${RM} ${OBJECTDIR}/4_2_Data.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  4_2_Data.c  -o ${OBJECTDIR}/4_2_Data.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/4_2_Data.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/user.o: user.c  .generated_files/7b57c3385f4255a3e2b9df8c4f1408df5eecaa6e.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/user.o.d 
	@${RM} ${OBJECTDIR}/user.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  user.c  -o ${OBJECTDIR}/user.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/user.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/DS18B20x27.o: DS18B20x27.c  .generated_files/fbdd74cdc5879e0593db57e9a919ca885002aecc.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DS18B20x27.o.d 
	@${RM} ${OBJECTDIR}/DS18B20x27.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DS18B20x27.c  -o ${OBJECTDIR}/DS18B20x27.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/DS18B20x27.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/DHT22.o: DHT22.c  .generated_files/5695c2deedcb40e041ac9eb453c9e002444ec37.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DHT22.o.d 
	@${RM} ${OBJECTDIR}/DHT22.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DHT22.c  -o ${OBJECTDIR}/DHT22.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/DHT22.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
else
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/870338d9a42c0df37199d5a0f4146886aad8b860.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_types.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/12a381050e17b7a30669d429df634d9dcb0d3308.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/756913acfdfa95924a4444624bfeb3947f15e92d.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_simple_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/uart3.o: mcc_generated_files/uart3.c  .generated_files/3cb4977be4f806d55224eb621b20a3fabc898fae.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart3.c  -o ${OBJECTDIR}/mcc_generated_files/uart3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart3.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/fd057192cce96578085dff8bc4bcaea92f7a2f63.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/38be0eedd8a657d23fe64aae9dfebaa68a260a95.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/de3047e4661e82fbfcdbdef7a694705303168c8d.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/4c65ae4fe9181b809f3a169be05d35105e67e325.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/8b3901a5cb128869c93e979027594c0098a63795.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/e4f6e5864d7ad6dff259ba4a1f38ed1a0f706f00.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/9860a1f79bf0f21656a7011faa8c427362250d5e.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/d527df5dbc0bf269924631a013af2e9a7133e4d1.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/spi1.o: mcc_generated_files/spi1.c  .generated_files/8229c5479564190683f62b4273484593c8ae44e0.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1.c  -o ${OBJECTDIR}/mcc_generated_files/spi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/4ddf84b045dbcd048a90ecc2b1dad62f5ac75c7e.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr2.c  -o ${OBJECTDIR}/mcc_generated_files/tmr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o: mcc_generated_files/EEPROM3_example.c  .generated_files/3ed1202e495f905e8f1953a3a70acef92a7e856c.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/EEPROM3_example.c  -o ${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/EEPROM3_example.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o: mcc_generated_files/EEPROM3_driver.c  .generated_files/3281ca03d82e4d7d1a253d4d6ec418610c69bce6.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/EEPROM3_driver.c  -o ${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/EEPROM3_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/i2c2_driver.o: mcc_generated_files/i2c2_driver.c  .generated_files/2f14d18a7288bc3e877ea865e51089c768ebd2de.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c2_driver.c  -o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/tmr3.o: mcc_generated_files/tmr3.c  .generated_files/56372fcb3e077866e997d2ef0194d2c301cfc7f0.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr3.c  -o ${OBJECTDIR}/mcc_generated_files/tmr3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr3.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Modbus/ModbusRTU_Master.o: Modbus/ModbusRTU_Master.c  .generated_files/4977f937aad0867d668f98be75b157dfc156ebeb.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Modbus" 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Master.o.d 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Modbus/ModbusRTU_Master.c  -o ${OBJECTDIR}/Modbus/ModbusRTU_Master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Modbus/ModbusRTU_Master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Modbus/ModbusTCPServer.o: Modbus/ModbusTCPServer.c  .generated_files/5c0ac7965bb17488b686e927a6b11bc5cb395213.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Modbus" 
	@${RM} ${OBJECTDIR}/Modbus/ModbusTCPServer.o.d 
	@${RM} ${OBJECTDIR}/Modbus/ModbusTCPServer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Modbus/ModbusTCPServer.c  -o ${OBJECTDIR}/Modbus/ModbusTCPServer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Modbus/ModbusTCPServer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Modbus/ModbusRTU_Slave.o: Modbus/ModbusRTU_Slave.c  .generated_files/3b7643d65c35c14623c6a44011b3d5b1ddd5292c.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Modbus" 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o.d 
	@${RM} ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Modbus/ModbusRTU_Slave.c  -o ${OBJECTDIR}/Modbus/ModbusRTU_Slave.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Modbus/ModbusRTU_Slave.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/0_DeviceEx.o: Multile_Meter/0_DeviceEx.c  .generated_files/c9d6942f8a3d08f71257bacec70818b339b4322f.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/0_DeviceEx.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/0_DeviceEx.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/0_DeviceEx.c  -o ${OBJECTDIR}/Multile_Meter/0_DeviceEx.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/0_DeviceEx.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o: Multile_Meter/1_SELEC_MFM384.c  .generated_files/e7be920d9a74807ec573ef658fddd6bf3cbb8701.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/1_SELEC_MFM384.c  -o ${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/1_SELEC_MFM384.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o: Multile_Meter/2_SELEC_EM368C.c  .generated_files/b16a8af618b438cecc7d04f4a354a1286ef6acde.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/2_SELEC_EM368C.c  -o ${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/2_SELEC_EM368C.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o: Multile_Meter/3_Schneider_PM2120.c  .generated_files/8aed1ab2626a5218da182ace8f727ec73a7022cd.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/3_Schneider_PM2120.c  -o ${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/3_Schneider_PM2120.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o: Multile_Meter/4_SELEC_MFM374.c  .generated_files/890ff61206b3ba1626570832d8e8668d2296b1e5.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/4_SELEC_MFM374.c  -o ${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/4_SELEC_MFM374.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o: Multile_Meter/6_MIKRO_DPM380_415AD.c  .generated_files/a5d8772fb09d733f12217c96bc1c39e2d363e8cb.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/6_MIKRO_DPM380_415AD.c  -o ${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/6_MIKRO_DPM380_415AD.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o: Multile_Meter/5_TENSE_EM_07K.c  .generated_files/e596de2b35f105c62dbcdf6c5b658261dad9ca17.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/5_TENSE_EM_07K.c  -o ${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/5_TENSE_EM_07K.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o: Multile_Meter/7_MITSU_ME96SSRA_MB.c  .generated_files/c29de0644ee74821a468e32aefcd4a4e1b369711.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Multile_Meter" 
	@${RM} ${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o.d 
	@${RM} ${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Multile_Meter/7_MITSU_ME96SSRA_MB.c  -o ${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Multile_Meter/7_MITSU_ME96SSRA_MB.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/arc4.o: Framework/tcpip/src/common/arc4.c  .generated_files/5295e4081e99215affa2df7c67219a8052191d80.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/arc4.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/arc4.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/arc4.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/big_int.o: Framework/tcpip/src/common/big_int.c  .generated_files/41b75f89d41813194a7ead3ec8aca49da7f995c.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/big_int.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/big_int.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/big_int.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/delay.o: Framework/tcpip/src/common/delay.c  .generated_files/c63be5b1d58a6fdcb317e244b97894881ad5c18a.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/delay.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/delay.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/delay.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/hashes.o: Framework/tcpip/src/common/hashes.c  .generated_files/88e461f531df68bc71ef960c54ea5bb2681c18c1.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/hashes.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/hashes.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/hashes.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/helpers.o: Framework/tcpip/src/common/helpers.c  .generated_files/4232e184d20702be18c6bdf551c8d4b0f59ac1b4.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/helpers.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/helpers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/helpers.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o: Framework/tcpip/src/common/mpfs2.c  .generated_files/ce304cad4e118d8166b60a3e790beac842f6e011.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/mpfs2.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/mpfs2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/rsa.o: Framework/tcpip/src/common/rsa.c  .generated_files/d2e8dffc9668080c65dca69869f56028dd99a54f.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/rsa.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/rsa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/rsa.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o: Framework/tcpip/src/common/stack_task.c  .generated_files/b3baa72412117e816072994bf4d4d60eafc8f35.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/stack_task.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/stack_task.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/common/tick.o: Framework/tcpip/src/common/tick.c  .generated_files/9cc94c4339f3e15f1d0f73157f5e8acd33ca192b.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/tick.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/tick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/common/tick.c  -o ${OBJECTDIR}/Framework/tcpip/src/common/tick.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/tick.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/arp.o: Framework/tcpip/src/arp.c  .generated_files/157a210bed529c100ee2e0d1a7439cbf263c37fd.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/arp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/arp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/arp.c  -o ${OBJECTDIR}/Framework/tcpip/src/arp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/arp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o: Framework/tcpip/src/custom_ssl_cert.c  .generated_files/2f92c9102a711e0c4aa63114334e8b82cb8bfd7a.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/custom_ssl_cert.c  -o ${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/custom_ssl_cert.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/ddns.o: Framework/tcpip/src/ddns.c  .generated_files/7b17c50c573e0b76c5366bb4d0e512be8aed94ae.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ddns.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ddns.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/ddns.c  -o ${OBJECTDIR}/Framework/tcpip/src/ddns.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/ddns.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o: Framework/tcpip/src/dhcp_client.c  .generated_files/9e4ecbc756af0009b88b4ba197f3cc631158637e.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dhcp_client.c  -o ${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dhcp_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o: Framework/tcpip/src/dhcp_server.c  .generated_files/88e93a7cc6006a4c434eaeb8b3a65904ee034e39.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dhcp_server.c  -o ${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dhcp_server.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dns_client.o: Framework/tcpip/src/dns_client.c  .generated_files/8fe56c833d77bd87752705909c5f237f9f30b9dd.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_client.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dns_client.c  -o ${OBJECTDIR}/Framework/tcpip/src/dns_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dns_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/dns_server.o: Framework/tcpip/src/dns_server.c  .generated_files/9a968e6376bb02f81e9948ee9173245eb881a611.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_server.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/dns_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/dns_server.c  -o ${OBJECTDIR}/Framework/tcpip/src/dns_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/dns_server.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/enc28j60.o: Framework/tcpip/src/enc28j60.c  .generated_files/c0c679af719314a8c7401efa5fac4f48129e66ac.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/enc28j60.c  -o ${OBJECTDIR}/Framework/tcpip/src/enc28j60.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/enc28j60.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/FTP.o: Framework/tcpip/src/FTP.c  .generated_files/d1abbd350512674fdb5cce50f952461fd3548b67.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/FTP.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/FTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/FTP.c  -o ${OBJECTDIR}/Framework/tcpip/src/FTP.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/FTP.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/http2.o: Framework/tcpip/src/http2.c  .generated_files/4d33e3599923b65e7fd3699d26993beec48eda83.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/http2.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/http2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/http2.c  -o ${OBJECTDIR}/Framework/tcpip/src/http2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/http2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/icmp.o: Framework/tcpip/src/icmp.c  .generated_files/5c379897fec03e43f77bc37b10417d4f1b9a550e.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/icmp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/icmp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/icmp.c  -o ${OBJECTDIR}/Framework/tcpip/src/icmp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/icmp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/ip.o: Framework/tcpip/src/ip.c  .generated_files/165651809516e2fa0f3ac95682dff2a14e14c79e.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ip.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ip.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/ip.c  -o ${OBJECTDIR}/Framework/tcpip/src/ip.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/ip.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/nbns.o: Framework/tcpip/src/nbns.c  .generated_files/af60d25270cbff9f20a67ca657c3f065190dc24a.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/nbns.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/nbns.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/nbns.c  -o ${OBJECTDIR}/Framework/tcpip/src/nbns.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/nbns.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/random.o: Framework/tcpip/src/random.c  .generated_files/ae5d84f404888b08a7f45d1f01b1fc38f6834d3d.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/random.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/random.c  -o ${OBJECTDIR}/Framework/tcpip/src/random.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/random.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/smtp.o: Framework/tcpip/src/smtp.c  .generated_files/ffffefcd06eb2e3b19b6272b9d409febe93d48c5.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/smtp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/smtp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/smtp.c  -o ${OBJECTDIR}/Framework/tcpip/src/smtp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/smtp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/ssl.o: Framework/tcpip/src/ssl.c  .generated_files/72bdc5ed49f68a6a68c475cbb5debfa020c668e0.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ssl.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/ssl.c  -o ${OBJECTDIR}/Framework/tcpip/src/ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/ssl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/tcp.o: Framework/tcpip/src/tcp.c  .generated_files/40a4f106b278aa9a632ad48f6a9ccc494c8bfd2b.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/tcp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/tcp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/tcp.c  -o ${OBJECTDIR}/Framework/tcpip/src/tcp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/tcp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/telnet.o: Framework/tcpip/src/telnet.c  .generated_files/b312320596ee107b3d4828c5054c778fa582af78.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/telnet.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/telnet.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/telnet.c  -o ${OBJECTDIR}/Framework/tcpip/src/telnet.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/telnet.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/udp.o: Framework/tcpip/src/udp.c  .generated_files/6d81b8a48b6fee0b97942e176aae12c5d92110d1.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/udp.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/udp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/udp.c  -o ${OBJECTDIR}/Framework/tcpip/src/udp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/udp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/Framework/tcpip/src/announce.o: Framework/tcpip/src/announce.c  .generated_files/b044460bb6b845ea95dda04be69acda64448237f.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/announce.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/announce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Framework/tcpip/src/announce.c  -o ${OBJECTDIR}/Framework/tcpip/src/announce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/announce.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/main.o: main.c  .generated_files/4fcdd5728c39e6045999e12fcbf808b4adbb20a6.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/4_2_Data.o: 4_2_Data.c  .generated_files/95a693bd35a2b8533299373f61cb5641760d409f.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/4_2_Data.o.d 
	@${RM} ${OBJECTDIR}/4_2_Data.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  4_2_Data.c  -o ${OBJECTDIR}/4_2_Data.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/4_2_Data.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/user.o: user.c  .generated_files/20b8f1a5ecf16faa9c94c1e28accf5f69f68a85d.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/user.o.d 
	@${RM} ${OBJECTDIR}/user.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  user.c  -o ${OBJECTDIR}/user.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/user.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/DS18B20x27.o: DS18B20x27.c  .generated_files/59b93578e7f6a73ad73d344edb70424163954e0d.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DS18B20x27.o.d 
	@${RM} ${OBJECTDIR}/DS18B20x27.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DS18B20x27.c  -o ${OBJECTDIR}/DS18B20x27.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/DS18B20x27.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/DHT22.o: DHT22.c  .generated_files/d377d3b0b322a0af523a67bc84c1032040c3436c.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DHT22.o.d 
	@${RM} ${OBJECTDIR}/DHT22.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DHT22.c  -o ${OBJECTDIR}/DHT22.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/DHT22.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o: Framework/tcpip/src/common/big_int_helper.S  .generated_files/efa82de4b4eb72a0d0e6b3cbe401638f198e9c4b.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  Framework/tcpip/src/common/big_int_helper.S  -o ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o.d"  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
else
${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o: Framework/tcpip/src/common/big_int_helper.S  .generated_files/9e15254d673b9a2c8923b81863522a8a37cb7b4e.flag .generated_files/b6ad29dd1cf69eac874e99304b701160592a6225.flag
	@${MKDIR} "${OBJECTDIR}/Framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o.d 
	@${RM} ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  Framework/tcpip/src/common/big_int_helper.S  -o ${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/Framework/tcpip/src/common/big_int_helper.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/4.2-LI.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/4.2-LI.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x1000:0x101B -mreserve=data@0x101C:0x101D -mreserve=data@0x101E:0x101F -mreserve=data@0x1020:0x1021 -mreserve=data@0x1022:0x1023 -mreserve=data@0x1024:0x1027 -mreserve=data@0x1028:0x104F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/4.2-LI.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/4.2-LI.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/4.2-LI.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   
	
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

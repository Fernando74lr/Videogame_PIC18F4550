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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Proyecto_Final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Proyecto_Final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=--mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=SW_SPI/clrcsspi.c SW_SPI/opensspi.c SW_SPI/setcsspi.c SW_SPI/wrtsspi.c XLCD/busyxlcd.c XLCD/openxlcd.c XLCD/putrxlcd.c XLCD/putsxlcd.c XLCD/readaddr.c XLCD/readdata.c XLCD/setcgram.c XLCD/setddram.c XLCD/wcmdxlcd.c XLCD/writdata.c adc.c eusart1.c i2c1.c interrupt_manager.c main.c mcc.c memory.c pin_manager.c spi1.c tmr0.c tmr1.c user_xlcd.c ccp2.c pwm2.c tmr2.c tmr3.c i2c_user.c keypad.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/SW_SPI/clrcsspi.p1 ${OBJECTDIR}/SW_SPI/opensspi.p1 ${OBJECTDIR}/SW_SPI/setcsspi.p1 ${OBJECTDIR}/SW_SPI/wrtsspi.p1 ${OBJECTDIR}/XLCD/busyxlcd.p1 ${OBJECTDIR}/XLCD/openxlcd.p1 ${OBJECTDIR}/XLCD/putrxlcd.p1 ${OBJECTDIR}/XLCD/putsxlcd.p1 ${OBJECTDIR}/XLCD/readaddr.p1 ${OBJECTDIR}/XLCD/readdata.p1 ${OBJECTDIR}/XLCD/setcgram.p1 ${OBJECTDIR}/XLCD/setddram.p1 ${OBJECTDIR}/XLCD/wcmdxlcd.p1 ${OBJECTDIR}/XLCD/writdata.p1 ${OBJECTDIR}/adc.p1 ${OBJECTDIR}/eusart1.p1 ${OBJECTDIR}/i2c1.p1 ${OBJECTDIR}/interrupt_manager.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/mcc.p1 ${OBJECTDIR}/memory.p1 ${OBJECTDIR}/pin_manager.p1 ${OBJECTDIR}/spi1.p1 ${OBJECTDIR}/tmr0.p1 ${OBJECTDIR}/tmr1.p1 ${OBJECTDIR}/user_xlcd.p1 ${OBJECTDIR}/ccp2.p1 ${OBJECTDIR}/pwm2.p1 ${OBJECTDIR}/tmr2.p1 ${OBJECTDIR}/tmr3.p1 ${OBJECTDIR}/i2c_user.p1 ${OBJECTDIR}/keypad.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/SW_SPI/clrcsspi.p1.d ${OBJECTDIR}/SW_SPI/opensspi.p1.d ${OBJECTDIR}/SW_SPI/setcsspi.p1.d ${OBJECTDIR}/SW_SPI/wrtsspi.p1.d ${OBJECTDIR}/XLCD/busyxlcd.p1.d ${OBJECTDIR}/XLCD/openxlcd.p1.d ${OBJECTDIR}/XLCD/putrxlcd.p1.d ${OBJECTDIR}/XLCD/putsxlcd.p1.d ${OBJECTDIR}/XLCD/readaddr.p1.d ${OBJECTDIR}/XLCD/readdata.p1.d ${OBJECTDIR}/XLCD/setcgram.p1.d ${OBJECTDIR}/XLCD/setddram.p1.d ${OBJECTDIR}/XLCD/wcmdxlcd.p1.d ${OBJECTDIR}/XLCD/writdata.p1.d ${OBJECTDIR}/adc.p1.d ${OBJECTDIR}/eusart1.p1.d ${OBJECTDIR}/i2c1.p1.d ${OBJECTDIR}/interrupt_manager.p1.d ${OBJECTDIR}/main.p1.d ${OBJECTDIR}/mcc.p1.d ${OBJECTDIR}/memory.p1.d ${OBJECTDIR}/pin_manager.p1.d ${OBJECTDIR}/spi1.p1.d ${OBJECTDIR}/tmr0.p1.d ${OBJECTDIR}/tmr1.p1.d ${OBJECTDIR}/user_xlcd.p1.d ${OBJECTDIR}/ccp2.p1.d ${OBJECTDIR}/pwm2.p1.d ${OBJECTDIR}/tmr2.p1.d ${OBJECTDIR}/tmr3.p1.d ${OBJECTDIR}/i2c_user.p1.d ${OBJECTDIR}/keypad.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/SW_SPI/clrcsspi.p1 ${OBJECTDIR}/SW_SPI/opensspi.p1 ${OBJECTDIR}/SW_SPI/setcsspi.p1 ${OBJECTDIR}/SW_SPI/wrtsspi.p1 ${OBJECTDIR}/XLCD/busyxlcd.p1 ${OBJECTDIR}/XLCD/openxlcd.p1 ${OBJECTDIR}/XLCD/putrxlcd.p1 ${OBJECTDIR}/XLCD/putsxlcd.p1 ${OBJECTDIR}/XLCD/readaddr.p1 ${OBJECTDIR}/XLCD/readdata.p1 ${OBJECTDIR}/XLCD/setcgram.p1 ${OBJECTDIR}/XLCD/setddram.p1 ${OBJECTDIR}/XLCD/wcmdxlcd.p1 ${OBJECTDIR}/XLCD/writdata.p1 ${OBJECTDIR}/adc.p1 ${OBJECTDIR}/eusart1.p1 ${OBJECTDIR}/i2c1.p1 ${OBJECTDIR}/interrupt_manager.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/mcc.p1 ${OBJECTDIR}/memory.p1 ${OBJECTDIR}/pin_manager.p1 ${OBJECTDIR}/spi1.p1 ${OBJECTDIR}/tmr0.p1 ${OBJECTDIR}/tmr1.p1 ${OBJECTDIR}/user_xlcd.p1 ${OBJECTDIR}/ccp2.p1 ${OBJECTDIR}/pwm2.p1 ${OBJECTDIR}/tmr2.p1 ${OBJECTDIR}/tmr3.p1 ${OBJECTDIR}/i2c_user.p1 ${OBJECTDIR}/keypad.p1

# Source Files
SOURCEFILES=SW_SPI/clrcsspi.c SW_SPI/opensspi.c SW_SPI/setcsspi.c SW_SPI/wrtsspi.c XLCD/busyxlcd.c XLCD/openxlcd.c XLCD/putrxlcd.c XLCD/putsxlcd.c XLCD/readaddr.c XLCD/readdata.c XLCD/setcgram.c XLCD/setddram.c XLCD/wcmdxlcd.c XLCD/writdata.c adc.c eusart1.c i2c1.c interrupt_manager.c main.c mcc.c memory.c pin_manager.c spi1.c tmr0.c tmr1.c user_xlcd.c ccp2.c pwm2.c tmr2.c tmr3.c i2c_user.c keypad.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Proyecto_Final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4550
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/SW_SPI/clrcsspi.p1: SW_SPI/clrcsspi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/SW_SPI" 
	@${RM} ${OBJECTDIR}/SW_SPI/clrcsspi.p1.d 
	@${RM} ${OBJECTDIR}/SW_SPI/clrcsspi.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/SW_SPI/clrcsspi.p1 SW_SPI/clrcsspi.c 
	@-${MV} ${OBJECTDIR}/SW_SPI/clrcsspi.d ${OBJECTDIR}/SW_SPI/clrcsspi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SW_SPI/clrcsspi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SW_SPI/opensspi.p1: SW_SPI/opensspi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/SW_SPI" 
	@${RM} ${OBJECTDIR}/SW_SPI/opensspi.p1.d 
	@${RM} ${OBJECTDIR}/SW_SPI/opensspi.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/SW_SPI/opensspi.p1 SW_SPI/opensspi.c 
	@-${MV} ${OBJECTDIR}/SW_SPI/opensspi.d ${OBJECTDIR}/SW_SPI/opensspi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SW_SPI/opensspi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SW_SPI/setcsspi.p1: SW_SPI/setcsspi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/SW_SPI" 
	@${RM} ${OBJECTDIR}/SW_SPI/setcsspi.p1.d 
	@${RM} ${OBJECTDIR}/SW_SPI/setcsspi.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/SW_SPI/setcsspi.p1 SW_SPI/setcsspi.c 
	@-${MV} ${OBJECTDIR}/SW_SPI/setcsspi.d ${OBJECTDIR}/SW_SPI/setcsspi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SW_SPI/setcsspi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SW_SPI/wrtsspi.p1: SW_SPI/wrtsspi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/SW_SPI" 
	@${RM} ${OBJECTDIR}/SW_SPI/wrtsspi.p1.d 
	@${RM} ${OBJECTDIR}/SW_SPI/wrtsspi.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/SW_SPI/wrtsspi.p1 SW_SPI/wrtsspi.c 
	@-${MV} ${OBJECTDIR}/SW_SPI/wrtsspi.d ${OBJECTDIR}/SW_SPI/wrtsspi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SW_SPI/wrtsspi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/busyxlcd.p1: XLCD/busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/busyxlcd.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/busyxlcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/XLCD/busyxlcd.p1 XLCD/busyxlcd.c 
	@-${MV} ${OBJECTDIR}/XLCD/busyxlcd.d ${OBJECTDIR}/XLCD/busyxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/busyxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/openxlcd.p1: XLCD/openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/openxlcd.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/openxlcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/XLCD/openxlcd.p1 XLCD/openxlcd.c 
	@-${MV} ${OBJECTDIR}/XLCD/openxlcd.d ${OBJECTDIR}/XLCD/openxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/openxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/putrxlcd.p1: XLCD/putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/putrxlcd.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/putrxlcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/XLCD/putrxlcd.p1 XLCD/putrxlcd.c 
	@-${MV} ${OBJECTDIR}/XLCD/putrxlcd.d ${OBJECTDIR}/XLCD/putrxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/putrxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/putsxlcd.p1: XLCD/putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/putsxlcd.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/putsxlcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/XLCD/putsxlcd.p1 XLCD/putsxlcd.c 
	@-${MV} ${OBJECTDIR}/XLCD/putsxlcd.d ${OBJECTDIR}/XLCD/putsxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/putsxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/readaddr.p1: XLCD/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/readaddr.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/readaddr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/XLCD/readaddr.p1 XLCD/readaddr.c 
	@-${MV} ${OBJECTDIR}/XLCD/readaddr.d ${OBJECTDIR}/XLCD/readaddr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/readaddr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/readdata.p1: XLCD/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/readdata.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/readdata.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/XLCD/readdata.p1 XLCD/readdata.c 
	@-${MV} ${OBJECTDIR}/XLCD/readdata.d ${OBJECTDIR}/XLCD/readdata.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/readdata.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/setcgram.p1: XLCD/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/setcgram.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/setcgram.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/XLCD/setcgram.p1 XLCD/setcgram.c 
	@-${MV} ${OBJECTDIR}/XLCD/setcgram.d ${OBJECTDIR}/XLCD/setcgram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/setcgram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/setddram.p1: XLCD/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/setddram.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/setddram.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/XLCD/setddram.p1 XLCD/setddram.c 
	@-${MV} ${OBJECTDIR}/XLCD/setddram.d ${OBJECTDIR}/XLCD/setddram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/setddram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/wcmdxlcd.p1: XLCD/wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/wcmdxlcd.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/wcmdxlcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/XLCD/wcmdxlcd.p1 XLCD/wcmdxlcd.c 
	@-${MV} ${OBJECTDIR}/XLCD/wcmdxlcd.d ${OBJECTDIR}/XLCD/wcmdxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/wcmdxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/writdata.p1: XLCD/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/writdata.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/writdata.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/XLCD/writdata.p1 XLCD/writdata.c 
	@-${MV} ${OBJECTDIR}/XLCD/writdata.d ${OBJECTDIR}/XLCD/writdata.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/writdata.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/adc.p1: adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc.p1.d 
	@${RM} ${OBJECTDIR}/adc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/adc.p1 adc.c 
	@-${MV} ${OBJECTDIR}/adc.d ${OBJECTDIR}/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/eusart1.p1: eusart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/eusart1.p1.d 
	@${RM} ${OBJECTDIR}/eusart1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/eusart1.p1 eusart1.c 
	@-${MV} ${OBJECTDIR}/eusart1.d ${OBJECTDIR}/eusart1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/eusart1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1.p1: i2c1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1.p1.d 
	@${RM} ${OBJECTDIR}/i2c1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/i2c1.p1 i2c1.c 
	@-${MV} ${OBJECTDIR}/i2c1.d ${OBJECTDIR}/i2c1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/interrupt_manager.p1: interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/interrupt_manager.p1.d 
	@${RM} ${OBJECTDIR}/interrupt_manager.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/interrupt_manager.p1 interrupt_manager.c 
	@-${MV} ${OBJECTDIR}/interrupt_manager.d ${OBJECTDIR}/interrupt_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/interrupt_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc.p1: mcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mcc.p1.d 
	@${RM} ${OBJECTDIR}/mcc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/mcc.p1 mcc.c 
	@-${MV} ${OBJECTDIR}/mcc.d ${OBJECTDIR}/mcc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/memory.p1: memory.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/memory.p1.d 
	@${RM} ${OBJECTDIR}/memory.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/memory.p1 memory.c 
	@-${MV} ${OBJECTDIR}/memory.d ${OBJECTDIR}/memory.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/memory.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pin_manager.p1: pin_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pin_manager.p1.d 
	@${RM} ${OBJECTDIR}/pin_manager.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/pin_manager.p1 pin_manager.c 
	@-${MV} ${OBJECTDIR}/pin_manager.d ${OBJECTDIR}/pin_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pin_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/spi1.p1: spi1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spi1.p1.d 
	@${RM} ${OBJECTDIR}/spi1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/spi1.p1 spi1.c 
	@-${MV} ${OBJECTDIR}/spi1.d ${OBJECTDIR}/spi1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/spi1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/tmr0.p1: tmr0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tmr0.p1.d 
	@${RM} ${OBJECTDIR}/tmr0.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/tmr0.p1 tmr0.c 
	@-${MV} ${OBJECTDIR}/tmr0.d ${OBJECTDIR}/tmr0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/tmr0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/tmr1.p1: tmr1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tmr1.p1.d 
	@${RM} ${OBJECTDIR}/tmr1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/tmr1.p1 tmr1.c 
	@-${MV} ${OBJECTDIR}/tmr1.d ${OBJECTDIR}/tmr1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/tmr1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/user_xlcd.p1: user_xlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/user_xlcd.p1.d 
	@${RM} ${OBJECTDIR}/user_xlcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/user_xlcd.p1 user_xlcd.c 
	@-${MV} ${OBJECTDIR}/user_xlcd.d ${OBJECTDIR}/user_xlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/user_xlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ccp2.p1: ccp2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ccp2.p1.d 
	@${RM} ${OBJECTDIR}/ccp2.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/ccp2.p1 ccp2.c 
	@-${MV} ${OBJECTDIR}/ccp2.d ${OBJECTDIR}/ccp2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ccp2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pwm2.p1: pwm2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pwm2.p1.d 
	@${RM} ${OBJECTDIR}/pwm2.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/pwm2.p1 pwm2.c 
	@-${MV} ${OBJECTDIR}/pwm2.d ${OBJECTDIR}/pwm2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pwm2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/tmr2.p1: tmr2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tmr2.p1.d 
	@${RM} ${OBJECTDIR}/tmr2.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/tmr2.p1 tmr2.c 
	@-${MV} ${OBJECTDIR}/tmr2.d ${OBJECTDIR}/tmr2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/tmr2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/tmr3.p1: tmr3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tmr3.p1.d 
	@${RM} ${OBJECTDIR}/tmr3.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/tmr3.p1 tmr3.c 
	@-${MV} ${OBJECTDIR}/tmr3.d ${OBJECTDIR}/tmr3.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/tmr3.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_user.p1: i2c_user.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_user.p1.d 
	@${RM} ${OBJECTDIR}/i2c_user.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/i2c_user.p1 i2c_user.c 
	@-${MV} ${OBJECTDIR}/i2c_user.d ${OBJECTDIR}/i2c_user.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_user.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/keypad.p1: keypad.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/keypad.p1.d 
	@${RM} ${OBJECTDIR}/keypad.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/keypad.p1 keypad.c 
	@-${MV} ${OBJECTDIR}/keypad.d ${OBJECTDIR}/keypad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/keypad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/SW_SPI/clrcsspi.p1: SW_SPI/clrcsspi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/SW_SPI" 
	@${RM} ${OBJECTDIR}/SW_SPI/clrcsspi.p1.d 
	@${RM} ${OBJECTDIR}/SW_SPI/clrcsspi.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/SW_SPI/clrcsspi.p1 SW_SPI/clrcsspi.c 
	@-${MV} ${OBJECTDIR}/SW_SPI/clrcsspi.d ${OBJECTDIR}/SW_SPI/clrcsspi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SW_SPI/clrcsspi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SW_SPI/opensspi.p1: SW_SPI/opensspi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/SW_SPI" 
	@${RM} ${OBJECTDIR}/SW_SPI/opensspi.p1.d 
	@${RM} ${OBJECTDIR}/SW_SPI/opensspi.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/SW_SPI/opensspi.p1 SW_SPI/opensspi.c 
	@-${MV} ${OBJECTDIR}/SW_SPI/opensspi.d ${OBJECTDIR}/SW_SPI/opensspi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SW_SPI/opensspi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SW_SPI/setcsspi.p1: SW_SPI/setcsspi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/SW_SPI" 
	@${RM} ${OBJECTDIR}/SW_SPI/setcsspi.p1.d 
	@${RM} ${OBJECTDIR}/SW_SPI/setcsspi.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/SW_SPI/setcsspi.p1 SW_SPI/setcsspi.c 
	@-${MV} ${OBJECTDIR}/SW_SPI/setcsspi.d ${OBJECTDIR}/SW_SPI/setcsspi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SW_SPI/setcsspi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SW_SPI/wrtsspi.p1: SW_SPI/wrtsspi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/SW_SPI" 
	@${RM} ${OBJECTDIR}/SW_SPI/wrtsspi.p1.d 
	@${RM} ${OBJECTDIR}/SW_SPI/wrtsspi.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/SW_SPI/wrtsspi.p1 SW_SPI/wrtsspi.c 
	@-${MV} ${OBJECTDIR}/SW_SPI/wrtsspi.d ${OBJECTDIR}/SW_SPI/wrtsspi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SW_SPI/wrtsspi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/busyxlcd.p1: XLCD/busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/busyxlcd.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/busyxlcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/XLCD/busyxlcd.p1 XLCD/busyxlcd.c 
	@-${MV} ${OBJECTDIR}/XLCD/busyxlcd.d ${OBJECTDIR}/XLCD/busyxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/busyxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/openxlcd.p1: XLCD/openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/openxlcd.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/openxlcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/XLCD/openxlcd.p1 XLCD/openxlcd.c 
	@-${MV} ${OBJECTDIR}/XLCD/openxlcd.d ${OBJECTDIR}/XLCD/openxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/openxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/putrxlcd.p1: XLCD/putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/putrxlcd.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/putrxlcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/XLCD/putrxlcd.p1 XLCD/putrxlcd.c 
	@-${MV} ${OBJECTDIR}/XLCD/putrxlcd.d ${OBJECTDIR}/XLCD/putrxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/putrxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/putsxlcd.p1: XLCD/putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/putsxlcd.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/putsxlcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/XLCD/putsxlcd.p1 XLCD/putsxlcd.c 
	@-${MV} ${OBJECTDIR}/XLCD/putsxlcd.d ${OBJECTDIR}/XLCD/putsxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/putsxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/readaddr.p1: XLCD/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/readaddr.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/readaddr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/XLCD/readaddr.p1 XLCD/readaddr.c 
	@-${MV} ${OBJECTDIR}/XLCD/readaddr.d ${OBJECTDIR}/XLCD/readaddr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/readaddr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/readdata.p1: XLCD/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/readdata.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/readdata.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/XLCD/readdata.p1 XLCD/readdata.c 
	@-${MV} ${OBJECTDIR}/XLCD/readdata.d ${OBJECTDIR}/XLCD/readdata.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/readdata.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/setcgram.p1: XLCD/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/setcgram.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/setcgram.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/XLCD/setcgram.p1 XLCD/setcgram.c 
	@-${MV} ${OBJECTDIR}/XLCD/setcgram.d ${OBJECTDIR}/XLCD/setcgram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/setcgram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/setddram.p1: XLCD/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/setddram.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/setddram.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/XLCD/setddram.p1 XLCD/setddram.c 
	@-${MV} ${OBJECTDIR}/XLCD/setddram.d ${OBJECTDIR}/XLCD/setddram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/setddram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/wcmdxlcd.p1: XLCD/wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/wcmdxlcd.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/wcmdxlcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/XLCD/wcmdxlcd.p1 XLCD/wcmdxlcd.c 
	@-${MV} ${OBJECTDIR}/XLCD/wcmdxlcd.d ${OBJECTDIR}/XLCD/wcmdxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/wcmdxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/XLCD/writdata.p1: XLCD/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/XLCD" 
	@${RM} ${OBJECTDIR}/XLCD/writdata.p1.d 
	@${RM} ${OBJECTDIR}/XLCD/writdata.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/XLCD/writdata.p1 XLCD/writdata.c 
	@-${MV} ${OBJECTDIR}/XLCD/writdata.d ${OBJECTDIR}/XLCD/writdata.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/XLCD/writdata.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/adc.p1: adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc.p1.d 
	@${RM} ${OBJECTDIR}/adc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/adc.p1 adc.c 
	@-${MV} ${OBJECTDIR}/adc.d ${OBJECTDIR}/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/eusart1.p1: eusart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/eusart1.p1.d 
	@${RM} ${OBJECTDIR}/eusart1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/eusart1.p1 eusart1.c 
	@-${MV} ${OBJECTDIR}/eusart1.d ${OBJECTDIR}/eusart1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/eusart1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1.p1: i2c1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1.p1.d 
	@${RM} ${OBJECTDIR}/i2c1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/i2c1.p1 i2c1.c 
	@-${MV} ${OBJECTDIR}/i2c1.d ${OBJECTDIR}/i2c1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/interrupt_manager.p1: interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/interrupt_manager.p1.d 
	@${RM} ${OBJECTDIR}/interrupt_manager.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/interrupt_manager.p1 interrupt_manager.c 
	@-${MV} ${OBJECTDIR}/interrupt_manager.d ${OBJECTDIR}/interrupt_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/interrupt_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc.p1: mcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mcc.p1.d 
	@${RM} ${OBJECTDIR}/mcc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/mcc.p1 mcc.c 
	@-${MV} ${OBJECTDIR}/mcc.d ${OBJECTDIR}/mcc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/memory.p1: memory.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/memory.p1.d 
	@${RM} ${OBJECTDIR}/memory.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/memory.p1 memory.c 
	@-${MV} ${OBJECTDIR}/memory.d ${OBJECTDIR}/memory.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/memory.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pin_manager.p1: pin_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pin_manager.p1.d 
	@${RM} ${OBJECTDIR}/pin_manager.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/pin_manager.p1 pin_manager.c 
	@-${MV} ${OBJECTDIR}/pin_manager.d ${OBJECTDIR}/pin_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pin_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/spi1.p1: spi1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spi1.p1.d 
	@${RM} ${OBJECTDIR}/spi1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/spi1.p1 spi1.c 
	@-${MV} ${OBJECTDIR}/spi1.d ${OBJECTDIR}/spi1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/spi1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/tmr0.p1: tmr0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tmr0.p1.d 
	@${RM} ${OBJECTDIR}/tmr0.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/tmr0.p1 tmr0.c 
	@-${MV} ${OBJECTDIR}/tmr0.d ${OBJECTDIR}/tmr0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/tmr0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/tmr1.p1: tmr1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tmr1.p1.d 
	@${RM} ${OBJECTDIR}/tmr1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/tmr1.p1 tmr1.c 
	@-${MV} ${OBJECTDIR}/tmr1.d ${OBJECTDIR}/tmr1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/tmr1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/user_xlcd.p1: user_xlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/user_xlcd.p1.d 
	@${RM} ${OBJECTDIR}/user_xlcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/user_xlcd.p1 user_xlcd.c 
	@-${MV} ${OBJECTDIR}/user_xlcd.d ${OBJECTDIR}/user_xlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/user_xlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ccp2.p1: ccp2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ccp2.p1.d 
	@${RM} ${OBJECTDIR}/ccp2.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/ccp2.p1 ccp2.c 
	@-${MV} ${OBJECTDIR}/ccp2.d ${OBJECTDIR}/ccp2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ccp2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pwm2.p1: pwm2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pwm2.p1.d 
	@${RM} ${OBJECTDIR}/pwm2.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/pwm2.p1 pwm2.c 
	@-${MV} ${OBJECTDIR}/pwm2.d ${OBJECTDIR}/pwm2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pwm2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/tmr2.p1: tmr2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tmr2.p1.d 
	@${RM} ${OBJECTDIR}/tmr2.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/tmr2.p1 tmr2.c 
	@-${MV} ${OBJECTDIR}/tmr2.d ${OBJECTDIR}/tmr2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/tmr2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/tmr3.p1: tmr3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tmr3.p1.d 
	@${RM} ${OBJECTDIR}/tmr3.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/tmr3.p1 tmr3.c 
	@-${MV} ${OBJECTDIR}/tmr3.d ${OBJECTDIR}/tmr3.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/tmr3.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_user.p1: i2c_user.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_user.p1.d 
	@${RM} ${OBJECTDIR}/i2c_user.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/i2c_user.p1 i2c_user.c 
	@-${MV} ${OBJECTDIR}/i2c_user.d ${OBJECTDIR}/i2c_user.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_user.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/keypad.p1: keypad.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/keypad.p1.d 
	@${RM} ${OBJECTDIR}/keypad.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/keypad.p1 keypad.c 
	@-${MV} ${OBJECTDIR}/keypad.d ${OBJECTDIR}/keypad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/keypad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Proyecto_Final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/Proyecto_Final.X.${IMAGE_TYPE}.map  -D__DEBUG=1  --debugger=none  -DXPRJ_default=$(CND_CONF)  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/Proyecto_Final.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/Proyecto_Final.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Proyecto_Final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/Proyecto_Final.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/Proyecto_Final.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
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

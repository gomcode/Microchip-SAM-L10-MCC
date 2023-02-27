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
ifeq "$(wildcard nbproject/Makefile-local-sam_l10_xpro.mk)" "nbproject/Makefile-local-sam_l10_xpro.mk"
include nbproject/Makefile-local-sam_l10_xpro.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=sam_l10_xpro
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/sam_l10_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/sam_l10_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/sam_l10_xpro/peripheral/adc/plib_adc.c ../src/config/sam_l10_xpro/peripheral/clock/plib_clock.c ../src/config/sam_l10_xpro/peripheral/dac/plib_dac.c ../src/config/sam_l10_xpro/peripheral/evsys/plib_evsys.c ../src/config/sam_l10_xpro/peripheral/nvic/plib_nvic.c ../src/config/sam_l10_xpro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/sam_l10_xpro/peripheral/pm/plib_pm.c ../src/config/sam_l10_xpro/peripheral/port/plib_port.c ../src/config/sam_l10_xpro/peripheral/rtc/plib_rtc_timer.c ../src/config/sam_l10_xpro/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/sam_l10_xpro/stdio/xc32_monitor.c ../src/config/sam_l10_xpro/initialization.c ../src/config/sam_l10_xpro/interrupts.c ../src/config/sam_l10_xpro/exceptions.c ../src/config/sam_l10_xpro/startup_xc32.c ../src/config/sam_l10_xpro/libc_syscalls.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1184338560/plib_adc.o ${OBJECTDIR}/_ext/14877202/plib_clock.o ${OBJECTDIR}/_ext/1184341350/plib_dac.o ${OBJECTDIR}/_ext/12727716/plib_evsys.o ${OBJECTDIR}/_ext/1939805438/plib_nvic.o ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o ${OBJECTDIR}/_ext/592394269/plib_pm.o ${OBJECTDIR}/_ext/1939752287/plib_port.o ${OBJECTDIR}/_ext/1184355393/plib_rtc_timer.o ${OBJECTDIR}/_ext/399502665/plib_sercom0_usart.o ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o ${OBJECTDIR}/_ext/13305212/initialization.o ${OBJECTDIR}/_ext/13305212/interrupts.o ${OBJECTDIR}/_ext/13305212/exceptions.o ${OBJECTDIR}/_ext/13305212/startup_xc32.o ${OBJECTDIR}/_ext/13305212/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1184338560/plib_adc.o.d ${OBJECTDIR}/_ext/14877202/plib_clock.o.d ${OBJECTDIR}/_ext/1184341350/plib_dac.o.d ${OBJECTDIR}/_ext/12727716/plib_evsys.o.d ${OBJECTDIR}/_ext/1939805438/plib_nvic.o.d ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/592394269/plib_pm.o.d ${OBJECTDIR}/_ext/1939752287/plib_port.o.d ${OBJECTDIR}/_ext/1184355393/plib_rtc_timer.o.d ${OBJECTDIR}/_ext/399502665/plib_sercom0_usart.o.d ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o.d ${OBJECTDIR}/_ext/13305212/initialization.o.d ${OBJECTDIR}/_ext/13305212/interrupts.o.d ${OBJECTDIR}/_ext/13305212/exceptions.o.d ${OBJECTDIR}/_ext/13305212/startup_xc32.o.d ${OBJECTDIR}/_ext/13305212/libc_syscalls.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1184338560/plib_adc.o ${OBJECTDIR}/_ext/14877202/plib_clock.o ${OBJECTDIR}/_ext/1184341350/plib_dac.o ${OBJECTDIR}/_ext/12727716/plib_evsys.o ${OBJECTDIR}/_ext/1939805438/plib_nvic.o ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o ${OBJECTDIR}/_ext/592394269/plib_pm.o ${OBJECTDIR}/_ext/1939752287/plib_port.o ${OBJECTDIR}/_ext/1184355393/plib_rtc_timer.o ${OBJECTDIR}/_ext/399502665/plib_sercom0_usart.o ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o ${OBJECTDIR}/_ext/13305212/initialization.o ${OBJECTDIR}/_ext/13305212/interrupts.o ${OBJECTDIR}/_ext/13305212/exceptions.o ${OBJECTDIR}/_ext/13305212/startup_xc32.o ${OBJECTDIR}/_ext/13305212/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/sam_l10_xpro/peripheral/adc/plib_adc.c ../src/config/sam_l10_xpro/peripheral/clock/plib_clock.c ../src/config/sam_l10_xpro/peripheral/dac/plib_dac.c ../src/config/sam_l10_xpro/peripheral/evsys/plib_evsys.c ../src/config/sam_l10_xpro/peripheral/nvic/plib_nvic.c ../src/config/sam_l10_xpro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/sam_l10_xpro/peripheral/pm/plib_pm.c ../src/config/sam_l10_xpro/peripheral/port/plib_port.c ../src/config/sam_l10_xpro/peripheral/rtc/plib_rtc_timer.c ../src/config/sam_l10_xpro/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/sam_l10_xpro/stdio/xc32_monitor.c ../src/config/sam_l10_xpro/initialization.c ../src/config/sam_l10_xpro/interrupts.c ../src/config/sam_l10_xpro/exceptions.c ../src/config/sam_l10_xpro/startup_xc32.c ../src/config/sam_l10_xpro/libc_syscalls.c ../src/main.c



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
	${MAKE}  -f nbproject/Makefile-sam_l10_xpro.mk ${DISTDIR}/sam_l10_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAML10E16A
MP_LINKER_FILE_OPTION=,--script="..\src\config\sam_l10_xpro\ATSAML10E16A.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1184338560/plib_adc.o: ../src/config/sam_l10_xpro/peripheral/adc/plib_adc.c  .generated_files/flags/sam_l10_xpro/1a2f3413939eae7861a2aa5126a102b1326b11ce .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1184338560" 
	@${RM} ${OBJECTDIR}/_ext/1184338560/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1184338560/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1184338560/plib_adc.o.d" -o ${OBJECTDIR}/_ext/1184338560/plib_adc.o ../src/config/sam_l10_xpro/peripheral/adc/plib_adc.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/14877202/plib_clock.o: ../src/config/sam_l10_xpro/peripheral/clock/plib_clock.c  .generated_files/flags/sam_l10_xpro/5c76d208ee82797dd8cfde95e144b58025267a3e .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/14877202" 
	@${RM} ${OBJECTDIR}/_ext/14877202/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/14877202/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/14877202/plib_clock.o.d" -o ${OBJECTDIR}/_ext/14877202/plib_clock.o ../src/config/sam_l10_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1184341350/plib_dac.o: ../src/config/sam_l10_xpro/peripheral/dac/plib_dac.c  .generated_files/flags/sam_l10_xpro/f9a7b801a00af4c1538e9c59d938fa7c27f9189f .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1184341350" 
	@${RM} ${OBJECTDIR}/_ext/1184341350/plib_dac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1184341350/plib_dac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1184341350/plib_dac.o.d" -o ${OBJECTDIR}/_ext/1184341350/plib_dac.o ../src/config/sam_l10_xpro/peripheral/dac/plib_dac.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/12727716/plib_evsys.o: ../src/config/sam_l10_xpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/sam_l10_xpro/e3f8c5a89e49c83703d1620e7e8416cb432bba18 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/12727716" 
	@${RM} ${OBJECTDIR}/_ext/12727716/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/12727716/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/12727716/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/12727716/plib_evsys.o ../src/config/sam_l10_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1939805438/plib_nvic.o: ../src/config/sam_l10_xpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_l10_xpro/643850a599449ac8e87a7ffbec4f93541368db78 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1939805438" 
	@${RM} ${OBJECTDIR}/_ext/1939805438/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1939805438/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1939805438/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1939805438/plib_nvic.o ../src/config/sam_l10_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o: ../src/config/sam_l10_xpro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/sam_l10_xpro/206a823f14494d74b8f892cd97d1d8625d646617 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/44973424" 
	@${RM} ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o ../src/config/sam_l10_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/592394269/plib_pm.o: ../src/config/sam_l10_xpro/peripheral/pm/plib_pm.c  .generated_files/flags/sam_l10_xpro/5d2e520627674e2833decb588ad3433cb0da1b0e .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/592394269" 
	@${RM} ${OBJECTDIR}/_ext/592394269/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/592394269/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/592394269/plib_pm.o.d" -o ${OBJECTDIR}/_ext/592394269/plib_pm.o ../src/config/sam_l10_xpro/peripheral/pm/plib_pm.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1939752287/plib_port.o: ../src/config/sam_l10_xpro/peripheral/port/plib_port.c  .generated_files/flags/sam_l10_xpro/90601a08d758f1b4e33c008b01148d8a6753c70d .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1939752287" 
	@${RM} ${OBJECTDIR}/_ext/1939752287/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1939752287/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1939752287/plib_port.o.d" -o ${OBJECTDIR}/_ext/1939752287/plib_port.o ../src/config/sam_l10_xpro/peripheral/port/plib_port.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1184355393/plib_rtc_timer.o: ../src/config/sam_l10_xpro/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/sam_l10_xpro/b15e6a91b2edbbab2623d86d7dc39176ff2c8e67 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1184355393" 
	@${RM} ${OBJECTDIR}/_ext/1184355393/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1184355393/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1184355393/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1184355393/plib_rtc_timer.o ../src/config/sam_l10_xpro/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399502665/plib_sercom0_usart.o: ../src/config/sam_l10_xpro/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/sam_l10_xpro/35bbc341998a3993c48713a43f90087d632db5f7 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/399502665" 
	@${RM} ${OBJECTDIR}/_ext/399502665/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/399502665/plib_sercom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399502665/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/399502665/plib_sercom0_usart.o ../src/config/sam_l10_xpro/peripheral/sercom/usart/plib_sercom0_usart.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1911983158/xc32_monitor.o: ../src/config/sam_l10_xpro/stdio/xc32_monitor.c  .generated_files/flags/sam_l10_xpro/ff6d77f00389e1351ba0804479cf1e74545d5943 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1911983158" 
	@${RM} ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1911983158/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o ../src/config/sam_l10_xpro/stdio/xc32_monitor.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/initialization.o: ../src/config/sam_l10_xpro/initialization.c  .generated_files/flags/sam_l10_xpro/3fde1fc201c56400e1d5838346fce2717fada334 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/initialization.o.d" -o ${OBJECTDIR}/_ext/13305212/initialization.o ../src/config/sam_l10_xpro/initialization.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/interrupts.o: ../src/config/sam_l10_xpro/interrupts.c  .generated_files/flags/sam_l10_xpro/4fda0d1fbc59fb7c647de4187a8a9f5131e6b206 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/interrupts.o.d" -o ${OBJECTDIR}/_ext/13305212/interrupts.o ../src/config/sam_l10_xpro/interrupts.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/exceptions.o: ../src/config/sam_l10_xpro/exceptions.c  .generated_files/flags/sam_l10_xpro/c78297424712cac2594f3c199d2a4512b7102eea .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/exceptions.o.d" -o ${OBJECTDIR}/_ext/13305212/exceptions.o ../src/config/sam_l10_xpro/exceptions.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/startup_xc32.o: ../src/config/sam_l10_xpro/startup_xc32.c  .generated_files/flags/sam_l10_xpro/4d3099b698941fe7d0e8a25f5f2c1d2fe4f77184 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/13305212/startup_xc32.o ../src/config/sam_l10_xpro/startup_xc32.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/libc_syscalls.o: ../src/config/sam_l10_xpro/libc_syscalls.c  .generated_files/flags/sam_l10_xpro/8ac4dda4454d04848631411cb8e82601aede04bd .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/13305212/libc_syscalls.o ../src/config/sam_l10_xpro/libc_syscalls.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_l10_xpro/8759da43de3e8d27953a0e5c3d173cb010193e0d .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1184338560/plib_adc.o: ../src/config/sam_l10_xpro/peripheral/adc/plib_adc.c  .generated_files/flags/sam_l10_xpro/f98a88d8311118c6b834e5cc17d0552761478549 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1184338560" 
	@${RM} ${OBJECTDIR}/_ext/1184338560/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1184338560/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1184338560/plib_adc.o.d" -o ${OBJECTDIR}/_ext/1184338560/plib_adc.o ../src/config/sam_l10_xpro/peripheral/adc/plib_adc.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/14877202/plib_clock.o: ../src/config/sam_l10_xpro/peripheral/clock/plib_clock.c  .generated_files/flags/sam_l10_xpro/3f4a137544d5c761c7bc98e9b4b5b0681cd6c080 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/14877202" 
	@${RM} ${OBJECTDIR}/_ext/14877202/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/14877202/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/14877202/plib_clock.o.d" -o ${OBJECTDIR}/_ext/14877202/plib_clock.o ../src/config/sam_l10_xpro/peripheral/clock/plib_clock.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1184341350/plib_dac.o: ../src/config/sam_l10_xpro/peripheral/dac/plib_dac.c  .generated_files/flags/sam_l10_xpro/f092f96ba669720c1217b25dae27c641de9d2f57 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1184341350" 
	@${RM} ${OBJECTDIR}/_ext/1184341350/plib_dac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1184341350/plib_dac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1184341350/plib_dac.o.d" -o ${OBJECTDIR}/_ext/1184341350/plib_dac.o ../src/config/sam_l10_xpro/peripheral/dac/plib_dac.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/12727716/plib_evsys.o: ../src/config/sam_l10_xpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/sam_l10_xpro/69f50cc8ce567b457c8418eab91b4913580da193 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/12727716" 
	@${RM} ${OBJECTDIR}/_ext/12727716/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/12727716/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/12727716/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/12727716/plib_evsys.o ../src/config/sam_l10_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1939805438/plib_nvic.o: ../src/config/sam_l10_xpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_l10_xpro/ba029f34197eee310895f604871323fa4f4ad3d1 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1939805438" 
	@${RM} ${OBJECTDIR}/_ext/1939805438/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1939805438/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1939805438/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1939805438/plib_nvic.o ../src/config/sam_l10_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o: ../src/config/sam_l10_xpro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/sam_l10_xpro/38b36d26c4ac08c3220c142fd24fa66ad5cdc60d .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/44973424" 
	@${RM} ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/44973424/plib_nvmctrl.o ../src/config/sam_l10_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/592394269/plib_pm.o: ../src/config/sam_l10_xpro/peripheral/pm/plib_pm.c  .generated_files/flags/sam_l10_xpro/68811d95a5d956bb4387afabec3b35747b5df6eb .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/592394269" 
	@${RM} ${OBJECTDIR}/_ext/592394269/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/592394269/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/592394269/plib_pm.o.d" -o ${OBJECTDIR}/_ext/592394269/plib_pm.o ../src/config/sam_l10_xpro/peripheral/pm/plib_pm.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1939752287/plib_port.o: ../src/config/sam_l10_xpro/peripheral/port/plib_port.c  .generated_files/flags/sam_l10_xpro/558f968872ad67fbf13db2480fc35d895a984385 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1939752287" 
	@${RM} ${OBJECTDIR}/_ext/1939752287/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1939752287/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1939752287/plib_port.o.d" -o ${OBJECTDIR}/_ext/1939752287/plib_port.o ../src/config/sam_l10_xpro/peripheral/port/plib_port.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1184355393/plib_rtc_timer.o: ../src/config/sam_l10_xpro/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/sam_l10_xpro/4f18b83c3b84133a0e987ea25eb283fa2f4fa174 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1184355393" 
	@${RM} ${OBJECTDIR}/_ext/1184355393/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1184355393/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1184355393/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1184355393/plib_rtc_timer.o ../src/config/sam_l10_xpro/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399502665/plib_sercom0_usart.o: ../src/config/sam_l10_xpro/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/sam_l10_xpro/9f25af0cec79af644dd4f774b6ba155899e261ee .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/399502665" 
	@${RM} ${OBJECTDIR}/_ext/399502665/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/399502665/plib_sercom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399502665/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/399502665/plib_sercom0_usart.o ../src/config/sam_l10_xpro/peripheral/sercom/usart/plib_sercom0_usart.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1911983158/xc32_monitor.o: ../src/config/sam_l10_xpro/stdio/xc32_monitor.c  .generated_files/flags/sam_l10_xpro/d52790040f1c2a4511b94723124751a67d6ee40f .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1911983158" 
	@${RM} ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1911983158/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1911983158/xc32_monitor.o ../src/config/sam_l10_xpro/stdio/xc32_monitor.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/initialization.o: ../src/config/sam_l10_xpro/initialization.c  .generated_files/flags/sam_l10_xpro/67e58dc6c046044713f81b87460f185cb2586cca .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/initialization.o.d" -o ${OBJECTDIR}/_ext/13305212/initialization.o ../src/config/sam_l10_xpro/initialization.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/interrupts.o: ../src/config/sam_l10_xpro/interrupts.c  .generated_files/flags/sam_l10_xpro/67d8edfb3d01653a98e79b0088cd47188878d631 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/interrupts.o.d" -o ${OBJECTDIR}/_ext/13305212/interrupts.o ../src/config/sam_l10_xpro/interrupts.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/exceptions.o: ../src/config/sam_l10_xpro/exceptions.c  .generated_files/flags/sam_l10_xpro/39d96ac74cf9870b74ed9114fcf7b3ed1dd1714c .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/exceptions.o.d" -o ${OBJECTDIR}/_ext/13305212/exceptions.o ../src/config/sam_l10_xpro/exceptions.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/startup_xc32.o: ../src/config/sam_l10_xpro/startup_xc32.c  .generated_files/flags/sam_l10_xpro/b194d3bbf9314ea4895ec527fceb123279ed2c27 .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/13305212/startup_xc32.o ../src/config/sam_l10_xpro/startup_xc32.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13305212/libc_syscalls.o: ../src/config/sam_l10_xpro/libc_syscalls.c  .generated_files/flags/sam_l10_xpro/14995d8c0ae51dad80eb7773c1b12df69f29889b .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/13305212" 
	@${RM} ${OBJECTDIR}/_ext/13305212/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/13305212/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13305212/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/13305212/libc_syscalls.o ../src/config/sam_l10_xpro/libc_syscalls.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_l10_xpro/55ad83d3d262a333bc458d9a121a3ca9d6239feb .generated_files/flags/sam_l10_xpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_l10_xpro" -I"../src/packs/ATSAML10E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn  ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/sam_l10_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/sam_l10_xpro/ATSAML10E16A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/sam_l10_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml 
	
else
${DISTDIR}/sam_l10_xpro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/sam_l10_xpro/ATSAML10E16A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/sam_l10_xpro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_l10_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/sam_l10_xpro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

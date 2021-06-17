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
ifeq "$(wildcard nbproject/Makefile-local-USB-II_STARTER_KIT.mk)" "nbproject/Makefile-local-USB-II_STARTER_KIT.mk"
include nbproject/Makefile-local-USB-II_STARTER_KIT.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=USB-II_STARTER_KIT
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemoFinalProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemoFinalProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
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
SOURCEFILES_QUOTED_IF_SPACED=../../../Source/portable/MPLAB/PIC32MX/port.c ../../../Source/portable/MPLAB/PIC32MX/port_asm.S ../../../Source/queue.c ../../../Source/tasks.c ../../../Source/list.c ../../../Source/timers.c ../../../Source/portable/MemMang/heap_4.c ../main.c ../ConfigPerformance.c ../mainWaveGenerator.c ../uart.c ../pwm.c ../GenSinWave.c ../GenTriWave.c ../GenSqrWave.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/332309696/port.o ${OBJECTDIR}/_ext/332309696/port_asm.o ${OBJECTDIR}/_ext/449926602/queue.o ${OBJECTDIR}/_ext/449926602/tasks.o ${OBJECTDIR}/_ext/449926602/list.o ${OBJECTDIR}/_ext/449926602/timers.o ${OBJECTDIR}/_ext/1884096877/heap_4.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/ConfigPerformance.o ${OBJECTDIR}/_ext/1472/mainWaveGenerator.o ${OBJECTDIR}/_ext/1472/uart.o ${OBJECTDIR}/_ext/1472/pwm.o ${OBJECTDIR}/_ext/1472/GenSinWave.o ${OBJECTDIR}/_ext/1472/GenTriWave.o ${OBJECTDIR}/_ext/1472/GenSqrWave.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/332309696/port.o.d ${OBJECTDIR}/_ext/332309696/port_asm.o.d ${OBJECTDIR}/_ext/449926602/queue.o.d ${OBJECTDIR}/_ext/449926602/tasks.o.d ${OBJECTDIR}/_ext/449926602/list.o.d ${OBJECTDIR}/_ext/449926602/timers.o.d ${OBJECTDIR}/_ext/1884096877/heap_4.o.d ${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/1472/ConfigPerformance.o.d ${OBJECTDIR}/_ext/1472/mainWaveGenerator.o.d ${OBJECTDIR}/_ext/1472/uart.o.d ${OBJECTDIR}/_ext/1472/pwm.o.d ${OBJECTDIR}/_ext/1472/GenSinWave.o.d ${OBJECTDIR}/_ext/1472/GenTriWave.o.d ${OBJECTDIR}/_ext/1472/GenSqrWave.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/332309696/port.o ${OBJECTDIR}/_ext/332309696/port_asm.o ${OBJECTDIR}/_ext/449926602/queue.o ${OBJECTDIR}/_ext/449926602/tasks.o ${OBJECTDIR}/_ext/449926602/list.o ${OBJECTDIR}/_ext/449926602/timers.o ${OBJECTDIR}/_ext/1884096877/heap_4.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/ConfigPerformance.o ${OBJECTDIR}/_ext/1472/mainWaveGenerator.o ${OBJECTDIR}/_ext/1472/uart.o ${OBJECTDIR}/_ext/1472/pwm.o ${OBJECTDIR}/_ext/1472/GenSinWave.o ${OBJECTDIR}/_ext/1472/GenTriWave.o ${OBJECTDIR}/_ext/1472/GenSqrWave.o

# Source Files
SOURCEFILES=../../../Source/portable/MPLAB/PIC32MX/port.c ../../../Source/portable/MPLAB/PIC32MX/port_asm.S ../../../Source/queue.c ../../../Source/tasks.c ../../../Source/list.c ../../../Source/timers.c ../../../Source/portable/MemMang/heap_4.c ../main.c ../ConfigPerformance.c ../mainWaveGenerator.c ../uart.c ../pwm.c ../GenSinWave.c ../GenTriWave.c ../GenSqrWave.c



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
	${MAKE}  -f nbproject/Makefile-USB-II_STARTER_KIT.mk dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemoFinalProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/332309696/port_asm.o: ../../../Source/portable/MPLAB/PIC32MX/port_asm.S  .generated_files/166b1c50d6e23d1a5bb5cb248b1278dc7845e13.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/332309696" 
	@${RM} ${OBJECTDIR}/_ext/332309696/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/332309696/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/332309696/port_asm.o.ok ${OBJECTDIR}/_ext/332309696/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/332309696/port_asm.o.d"  -o ${OBJECTDIR}/_ext/332309696/port_asm.o ../../../Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/332309696/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/332309696/port_asm.o.d" "${OBJECTDIR}/_ext/332309696/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/332309696/port_asm.o: ../../../Source/portable/MPLAB/PIC32MX/port_asm.S  .generated_files/b83592b8e5089d7c03b496504d268ff68b5f2d02.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/332309696" 
	@${RM} ${OBJECTDIR}/_ext/332309696/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/332309696/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/332309696/port_asm.o.ok ${OBJECTDIR}/_ext/332309696/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/332309696/port_asm.o.d"  -o ${OBJECTDIR}/_ext/332309696/port_asm.o ../../../Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/332309696/port_asm.o.asm.d",--gdwarf-2 -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/332309696/port_asm.o.d" "${OBJECTDIR}/_ext/332309696/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/332309696/port.o: ../../../Source/portable/MPLAB/PIC32MX/port.c  .generated_files/316d7d77bb053b8fff873337800660a76f5fae33.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/332309696" 
	@${RM} ${OBJECTDIR}/_ext/332309696/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/332309696/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/332309696/port.o.d" -o ${OBJECTDIR}/_ext/332309696/port.o ../../../Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/queue.o: ../../../Source/queue.c  .generated_files/ce27c7952f904b22b913c508ca34c724cd2d6a35.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/queue.o.d" -o ${OBJECTDIR}/_ext/449926602/queue.o ../../../Source/queue.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/tasks.o: ../../../Source/tasks.c  .generated_files/c5af7ea9abc29a5b3cc4b01adfc9d6e197ccb86d.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/tasks.o.d" -o ${OBJECTDIR}/_ext/449926602/tasks.o ../../../Source/tasks.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/list.o: ../../../Source/list.c  .generated_files/db86f9ba3a3788d8253be6b528eb046dfa372413.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/list.o.d" -o ${OBJECTDIR}/_ext/449926602/list.o ../../../Source/list.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/timers.o: ../../../Source/timers.c  .generated_files/43564242f51f861864179f47e5af0b6b9ba7a944.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/timers.o.d" -o ${OBJECTDIR}/_ext/449926602/timers.o ../../../Source/timers.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1884096877/heap_4.o: ../../../Source/portable/MemMang/heap_4.c  .generated_files/88e4d7b487bf18d08a86d5add1ecc68610fe5454.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1884096877" 
	@${RM} ${OBJECTDIR}/_ext/1884096877/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884096877/heap_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/1884096877/heap_4.o.d" -o ${OBJECTDIR}/_ext/1884096877/heap_4.o ../../../Source/portable/MemMang/heap_4.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  .generated_files/e828fe2add1ac9e64e34d35a425ae44c60778051.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/ConfigPerformance.o: ../ConfigPerformance.c  .generated_files/e85af5418de2ef2ef6b41c369499e091e6eec47c.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ConfigPerformance.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ConfigPerformance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/1472/ConfigPerformance.o.d" -o ${OBJECTDIR}/_ext/1472/ConfigPerformance.o ../ConfigPerformance.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/mainWaveGenerator.o: ../mainWaveGenerator.c  .generated_files/3e597bab18e87576bdb675a0d9fb3565fb9f2739.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/mainWaveGenerator.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/mainWaveGenerator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/1472/mainWaveGenerator.o.d" -o ${OBJECTDIR}/_ext/1472/mainWaveGenerator.o ../mainWaveGenerator.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/uart.o: ../uart.c  .generated_files/73ca5468fc00caab369b9ea03ed9c504b88281e9.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/1472/uart.o.d" -o ${OBJECTDIR}/_ext/1472/uart.o ../uart.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/pwm.o: ../pwm.c  .generated_files/35e54266a847e37969db80398b3e93b23d6b14f2.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/1472/pwm.o.d" -o ${OBJECTDIR}/_ext/1472/pwm.o ../pwm.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/GenSinWave.o: ../GenSinWave.c  .generated_files/8061f00f95392f9f0124293573cd483cf53572e9.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/GenSinWave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenSinWave.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/1472/GenSinWave.o.d" -o ${OBJECTDIR}/_ext/1472/GenSinWave.o ../GenSinWave.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/GenTriWave.o: ../GenTriWave.c  .generated_files/53625dc9151ba6cf68a8cfea9942455497bd1d49.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/GenTriWave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenTriWave.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/1472/GenTriWave.o.d" -o ${OBJECTDIR}/_ext/1472/GenTriWave.o ../GenTriWave.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/GenSqrWave.o: ../GenSqrWave.c  .generated_files/6814b6ee8fa59a277b6d7515a6b0955a3ab2c394.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/GenSqrWave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenSqrWave.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/1472/GenSqrWave.o.d" -o ${OBJECTDIR}/_ext/1472/GenSqrWave.o ../GenSqrWave.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/332309696/port.o: ../../../Source/portable/MPLAB/PIC32MX/port.c  .generated_files/8eb781ac331e8017cfcceda24205c828e88213d8.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/332309696" 
	@${RM} ${OBJECTDIR}/_ext/332309696/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/332309696/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/332309696/port.o.d" -o ${OBJECTDIR}/_ext/332309696/port.o ../../../Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/queue.o: ../../../Source/queue.c  .generated_files/877d667c96becf87638f6eea1e9e1ae71fa881db.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/queue.o.d" -o ${OBJECTDIR}/_ext/449926602/queue.o ../../../Source/queue.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/tasks.o: ../../../Source/tasks.c  .generated_files/313f862582c0b537f194b92f3cee51b23c61cd10.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/tasks.o.d" -o ${OBJECTDIR}/_ext/449926602/tasks.o ../../../Source/tasks.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/list.o: ../../../Source/list.c  .generated_files/3eeef4d47c08980558c11dfa341c7d52fef180c4.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/list.o.d" -o ${OBJECTDIR}/_ext/449926602/list.o ../../../Source/list.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/timers.o: ../../../Source/timers.c  .generated_files/5f73f7dd43f148da3b6eb73af310fe5aa5be0dff.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/timers.o.d" -o ${OBJECTDIR}/_ext/449926602/timers.o ../../../Source/timers.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1884096877/heap_4.o: ../../../Source/portable/MemMang/heap_4.c  .generated_files/886d7d98c38687f5cac4f1392452d53297258d6.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1884096877" 
	@${RM} ${OBJECTDIR}/_ext/1884096877/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884096877/heap_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/1884096877/heap_4.o.d" -o ${OBJECTDIR}/_ext/1884096877/heap_4.o ../../../Source/portable/MemMang/heap_4.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  .generated_files/eccf30febccb0a37c54d656694914211ec40e06.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/ConfigPerformance.o: ../ConfigPerformance.c  .generated_files/a47b4092ed33998c2e9a1c9dd63212f9350a69f1.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ConfigPerformance.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ConfigPerformance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/1472/ConfigPerformance.o.d" -o ${OBJECTDIR}/_ext/1472/ConfigPerformance.o ../ConfigPerformance.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/mainWaveGenerator.o: ../mainWaveGenerator.c  .generated_files/7df604b0e3d656b4fd43abe860323010f30b3673.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/mainWaveGenerator.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/mainWaveGenerator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/1472/mainWaveGenerator.o.d" -o ${OBJECTDIR}/_ext/1472/mainWaveGenerator.o ../mainWaveGenerator.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/uart.o: ../uart.c  .generated_files/8420220e4dd3a835763f3bc2135dfc2cd077a22b.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/1472/uart.o.d" -o ${OBJECTDIR}/_ext/1472/uart.o ../uart.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/pwm.o: ../pwm.c  .generated_files/6aeb77e0675183183d08ffba078b727dce4877e3.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/1472/pwm.o.d" -o ${OBJECTDIR}/_ext/1472/pwm.o ../pwm.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/GenSinWave.o: ../GenSinWave.c  .generated_files/e291debdadcd5168d3138a027ebd8f01cb687e0b.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/GenSinWave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenSinWave.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/1472/GenSinWave.o.d" -o ${OBJECTDIR}/_ext/1472/GenSinWave.o ../GenSinWave.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/GenTriWave.o: ../GenTriWave.c  .generated_files/985bf42d338aec47bbb00b9d8364627b9fa7025a.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/GenTriWave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenTriWave.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/1472/GenTriWave.o.d" -o ${OBJECTDIR}/_ext/1472/GenTriWave.o ../GenTriWave.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/GenSqrWave.o: ../GenSqrWave.c  .generated_files/20e2c6ff7b0147a1e3463bf197947253b771bd9.flag .generated_files/4030e4a7ca3237505371c7df91115cacc8c9f2d1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/GenSqrWave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenSqrWave.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -MP -MMD -MF "${OBJECTDIR}/_ext/1472/GenSqrWave.o.d" -o ${OBJECTDIR}/_ext/1472/GenSqrWave.o ../GenSqrWave.c    -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -I ../../../Source/include -I ../../../Source/portable/MPLAB/PIC32MX -I ../../Common/include -I ../ -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemoFinalProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemoFinalProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=0,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemoFinalProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemoFinalProject.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_USB-II_STARTER_KIT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=0,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemoFinalProject.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/USB-II_STARTER_KIT
	${RM} -r dist/USB-II_STARTER_KIT

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

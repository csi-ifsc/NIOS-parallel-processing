################################################
# @author: Lucas Martins Mendes
# @date: 04/10/19
# @brief: top level makefile for nios Projects
################################################

NIOS_TARGETS :=  all bsp libs flash mem_init_generate help
NIOS_TARGETS += clean_all clean clean_bsp clean_libs download-elf program-flash

#############
# Variables
############

PROJ_NAME :=1proc-mat-process-proc0
PROC_NUM := 0

CUSTOM_TARGETS := update-bsp edit-bsp run
BSP_SETTINGS := "$(shell realpath ./bsp/settings.bsp)"

##########
# Include
##########

#############
# Targets
#############

.PHONY: ${CUSTOM_TARGETS}

run: download-elf
	nios2-terminal

edit-bsp:
	nios2-bsp-editor --settings=${BSP_SETTINGS}

update-bsp:
	nios2-bsp-update-settings --settings=${BSP_SETTINGS}
	nios2-bsp-generate-files --settings=${BSP_SETTINGS} --bsp-dir=./bsp/

${NIOS_TARGETS} :
	make -C app/ $@

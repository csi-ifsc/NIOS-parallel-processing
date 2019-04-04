/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'proc_0_0_proc_0' in SOPC Builder design 'image_parallel_processing_qsys'
 * SOPC Builder design path: ../../Image_parallel_processing-1proc/image_parallel_processing_qsys.sopcinfo
 *
 * Generated: Tue Mar 26 18:12:25 BRT 2019
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_gen2"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x00080820
#define ALT_CPU_CPU_ARCH_NIOS2_R1
#define ALT_CPU_CPU_FREQ 143000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "tiny"
#define ALT_CPU_DATA_ADDR_WIDTH 0x1c
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x00000020
#define ALT_CPU_FLASH_ACCELERATOR_LINES 0
#define ALT_CPU_FLASH_ACCELERATOR_LINE_SIZE 0
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 143000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0x14
#define ALT_CPU_NAME "proc_0_0_proc_0"
#define ALT_CPU_OCI_VERSION 1
#define ALT_CPU_RESET_ADDR 0x00000000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00080820
#define NIOS2_CPU_ARCH_NIOS2_R1
#define NIOS2_CPU_FREQ 143000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "tiny"
#define NIOS2_DATA_ADDR_WIDTH 0x1c
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x00000020
#define NIOS2_FLASH_ACCELERATOR_LINES 0
#define NIOS2_FLASH_ACCELERATOR_LINE_SIZE 0
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 0
#define NIOS2_ICACHE_LINE_SIZE_LOG2 0
#define NIOS2_ICACHE_SIZE 0
#define NIOS2_INST_ADDR_WIDTH 0x14
#define NIOS2_OCI_VERSION 1
#define NIOS2_RESET_ADDR 0x00000000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_MUTEX
#define __ALTERA_AVALON_NEW_SDRAM_CONTROLLER
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_TIMER
#define __ALTERA_NIOS2_GEN2


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone V"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/proc_0_0_jtag_uart_0"
#define ALT_STDERR_BASE 0x81020
#define ALT_STDERR_DEV proc_0_0_jtag_uart_0
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/proc_0_0_jtag_uart_0"
#define ALT_STDIN_BASE 0x81020
#define ALT_STDIN_DEV proc_0_0_jtag_uart_0
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/proc_0_0_jtag_uart_0"
#define ALT_STDOUT_BASE 0x81020
#define ALT_STDOUT_DEV proc_0_0_jtag_uart_0
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "image_parallel_processing_qsys"


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 32
#define ALT_SYS_CLK PROC_0_0_TIMER_0
#define ALT_TIMESTAMP_CLK PROC_0_0_TIMER_0


/*
 * mutex_0 configuration
 *
 */

#define ALT_MODULE_CLASS_mutex_0 altera_avalon_mutex
#define MUTEX_0_BASE 0xc000000
#define MUTEX_0_IRQ -1
#define MUTEX_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define MUTEX_0_NAME "/dev/mutex_0"
#define MUTEX_0_OWNER_INIT 0
#define MUTEX_0_OWNER_WIDTH 16
#define MUTEX_0_SPAN 8
#define MUTEX_0_TYPE "altera_avalon_mutex"
#define MUTEX_0_VALUE_INIT 0
#define MUTEX_0_VALUE_WIDTH 16


/*
 * proc_0_0_jtag_uart_0 configuration
 *
 */

#define ALT_MODULE_CLASS_proc_0_0_jtag_uart_0 altera_avalon_jtag_uart
#define PROC_0_0_JTAG_UART_0_BASE 0x81020
#define PROC_0_0_JTAG_UART_0_IRQ 0
#define PROC_0_0_JTAG_UART_0_IRQ_INTERRUPT_CONTROLLER_ID 0
#define PROC_0_0_JTAG_UART_0_NAME "/dev/proc_0_0_jtag_uart_0"
#define PROC_0_0_JTAG_UART_0_READ_DEPTH 64
#define PROC_0_0_JTAG_UART_0_READ_THRESHOLD 8
#define PROC_0_0_JTAG_UART_0_SPAN 8
#define PROC_0_0_JTAG_UART_0_TYPE "altera_avalon_jtag_uart"
#define PROC_0_0_JTAG_UART_0_WRITE_DEPTH 64
#define PROC_0_0_JTAG_UART_0_WRITE_THRESHOLD 8


/*
 * proc_0_0_onchip_memory2_0 configuration
 *
 */

#define ALT_MODULE_CLASS_proc_0_0_onchip_memory2_0 altera_avalon_onchip_memory2
#define PROC_0_0_ONCHIP_MEMORY2_0_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define PROC_0_0_ONCHIP_MEMORY2_0_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define PROC_0_0_ONCHIP_MEMORY2_0_BASE 0x0
#define PROC_0_0_ONCHIP_MEMORY2_0_CONTENTS_INFO ""
#define PROC_0_0_ONCHIP_MEMORY2_0_DUAL_PORT 0
#define PROC_0_0_ONCHIP_MEMORY2_0_GUI_RAM_BLOCK_TYPE "AUTO"
#define PROC_0_0_ONCHIP_MEMORY2_0_INIT_CONTENTS_FILE "image_parallel_processing_qsys_proc_0_0_onchip_memory2_0"
#define PROC_0_0_ONCHIP_MEMORY2_0_INIT_MEM_CONTENT 1
#define PROC_0_0_ONCHIP_MEMORY2_0_INSTANCE_ID "NONE"
#define PROC_0_0_ONCHIP_MEMORY2_0_IRQ -1
#define PROC_0_0_ONCHIP_MEMORY2_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PROC_0_0_ONCHIP_MEMORY2_0_NAME "/dev/proc_0_0_onchip_memory2_0"
#define PROC_0_0_ONCHIP_MEMORY2_0_NON_DEFAULT_INIT_FILE_ENABLED 0
#define PROC_0_0_ONCHIP_MEMORY2_0_RAM_BLOCK_TYPE "AUTO"
#define PROC_0_0_ONCHIP_MEMORY2_0_READ_DURING_WRITE_MODE "DONT_CARE"
#define PROC_0_0_ONCHIP_MEMORY2_0_SINGLE_CLOCK_OP 0
#define PROC_0_0_ONCHIP_MEMORY2_0_SIZE_MULTIPLE 1
#define PROC_0_0_ONCHIP_MEMORY2_0_SIZE_VALUE 300000
#define PROC_0_0_ONCHIP_MEMORY2_0_SPAN 300000
#define PROC_0_0_ONCHIP_MEMORY2_0_TYPE "altera_avalon_onchip_memory2"
#define PROC_0_0_ONCHIP_MEMORY2_0_WRITABLE 1


/*
 * proc_0_0_timer_0 configuration
 *
 */

#define ALT_MODULE_CLASS_proc_0_0_timer_0 altera_avalon_timer
#define PROC_0_0_TIMER_0_ALWAYS_RUN 0
#define PROC_0_0_TIMER_0_BASE 0x81000
#define PROC_0_0_TIMER_0_COUNTER_SIZE 32
#define PROC_0_0_TIMER_0_FIXED_PERIOD 1
#define PROC_0_0_TIMER_0_FREQ 143000000
#define PROC_0_0_TIMER_0_IRQ 1
#define PROC_0_0_TIMER_0_IRQ_INTERRUPT_CONTROLLER_ID 0
#define PROC_0_0_TIMER_0_LOAD_VALUE 142999
#define PROC_0_0_TIMER_0_MULT 0.001
#define PROC_0_0_TIMER_0_NAME "/dev/proc_0_0_timer_0"
#define PROC_0_0_TIMER_0_PERIOD 1
#define PROC_0_0_TIMER_0_PERIOD_UNITS "ms"
#define PROC_0_0_TIMER_0_RESET_OUTPUT 0
#define PROC_0_0_TIMER_0_SNAPSHOT 1
#define PROC_0_0_TIMER_0_SPAN 32
#define PROC_0_0_TIMER_0_TICKS_PER_SEC 1000
#define PROC_0_0_TIMER_0_TIMEOUT_PULSE_OUTPUT 0
#define PROC_0_0_TIMER_0_TYPE "altera_avalon_timer"


/*
 * sdram_controller configuration
 *
 */

#define ALT_MODULE_CLASS_sdram_controller altera_avalon_new_sdram_controller
#define SDRAM_CONTROLLER_BASE 0x8000000
#define SDRAM_CONTROLLER_CAS_LATENCY 3
#define SDRAM_CONTROLLER_CONTENTS_INFO
#define SDRAM_CONTROLLER_INIT_NOP_DELAY 0.0
#define SDRAM_CONTROLLER_INIT_REFRESH_COMMANDS 2
#define SDRAM_CONTROLLER_IRQ -1
#define SDRAM_CONTROLLER_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SDRAM_CONTROLLER_IS_INITIALIZED 1
#define SDRAM_CONTROLLER_NAME "/dev/sdram_controller"
#define SDRAM_CONTROLLER_POWERUP_DELAY 100.0
#define SDRAM_CONTROLLER_REFRESH_PERIOD 7.8125
#define SDRAM_CONTROLLER_REGISTER_DATA_IN 1
#define SDRAM_CONTROLLER_SDRAM_ADDR_WIDTH 0x19
#define SDRAM_CONTROLLER_SDRAM_BANK_WIDTH 2
#define SDRAM_CONTROLLER_SDRAM_COL_WIDTH 10
#define SDRAM_CONTROLLER_SDRAM_DATA_WIDTH 16
#define SDRAM_CONTROLLER_SDRAM_NUM_BANKS 4
#define SDRAM_CONTROLLER_SDRAM_NUM_CHIPSELECTS 1
#define SDRAM_CONTROLLER_SDRAM_ROW_WIDTH 13
#define SDRAM_CONTROLLER_SHARED_DATA 0
#define SDRAM_CONTROLLER_SIM_MODEL_BASE 0
#define SDRAM_CONTROLLER_SPAN 67108864
#define SDRAM_CONTROLLER_STARVATION_INDICATOR 0
#define SDRAM_CONTROLLER_TRISTATE_BRIDGE_SLAVE ""
#define SDRAM_CONTROLLER_TYPE "altera_avalon_new_sdram_controller"
#define SDRAM_CONTROLLER_T_AC 5.4
#define SDRAM_CONTROLLER_T_MRD 3
#define SDRAM_CONTROLLER_T_RCD 15.0
#define SDRAM_CONTROLLER_T_RFC 70.0
#define SDRAM_CONTROLLER_T_RP 15.0
#define SDRAM_CONTROLLER_T_WR 14.0

#endif /* __SYSTEM_H_ */
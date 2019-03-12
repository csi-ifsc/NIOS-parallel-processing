#include "system.h"
#include "io.h"
#include "sys/alt_stdio.h"
#include <stdint.h>

const uint16_t testvalue = 1234;
uint16_t testread  = 0;

#define DEBUG(message) alt_printf(message "\n")

#define PROC0_SDRAM_BASE 0x08000000
int main(void)
{
	while(1)
	{
		alt_printf("hello!\n");
#if 0
		IOWR_16DIRECT(PROC0_SDRAM_BASE,0,testvalue);
		for(int i =0; i< 5000000;i++);
		testread = IORD_16DIRECT(PROC0_SDRAM_BASE,0);
		alt_printf("value: %i\n", testread);
		if(!testread)
			alt_printf("read something");
#endif
	}
	return 1;
}

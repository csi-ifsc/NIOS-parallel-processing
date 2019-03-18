#include "system.h"
#include "io.h"
#include "sys/alt_stdio.h"
#include <stdint.h>

/*--------- Macros/constants -------*/
#define PROC0_SDRAM_BASE (0x08000000)

#define IMG_H (600)
#define IMG_W (800)

#define DEBUG_OUTPUT_F alt_printf
#define DEBUG_OUTPUT alt_putstr

#define DEBUG(msg) 						\
	DEBUG_OUTPUT(msg);					\
	DEBUG_OUTPUT("\n")

#define DEBUGF(msg,...)				\
	DEBUG_OUTPUT_F(msg, __VA_ARGS__ );	\
	DEBUG_OUTPUT("\n")

#define THRESHOLD (127)

/*------- Function predeclaration --------*/

void fill_image(uint16_t image_base, uint16_t image_height, uint16_t image_width);

/*------- Global Variables --------*/

/*OBS: the image is black and white with 1 byte of color depht*/


const uint16_t testvalue = 1234;
uint16_t testread  = 0;



/*--------- Main ---------*/


void main(void)
{
	DEBUG("hello there");
	while(1)
	{

	}
}


/*---- Function Definition-----------------*/
/*-----------------------------------------*/

/**
 * @brief fill image memory range
 *
 */
void fill_image(uint16_t image_base, uint16_t image_height, uint16_t image_width)
{
	/*fill image with white to gray gradient*/
	uint8_t i,j,v;
	for(i=0;i<image_height;i++) /*write image "rows" sequentially for better memory performance*/
	{
		for(j=0;j<image_width;j++)
		{
			v = j*255/800;
			IOWR_16DIRECT(image_base,j+i*image_height,v); /*checar depois tamanho ponteiro (e internamente castado pra alt_u8)*/
			DEBUGF("wrote %x at %x", v, j);
		}
	}
}
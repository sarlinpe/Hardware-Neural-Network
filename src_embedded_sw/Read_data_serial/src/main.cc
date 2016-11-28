#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include "xparameters.h"
#include "xil_printf.h"

#define ACK 			'$'
#define ERROR			'%'
#define END				':'

#define DATA_SIZE		178
#define INPUT_SIZE		13

u8 data[(INPUT_SIZE+1)*DATA_SIZE] = {0};

int main()
{
	u8 examples_count = 0, features_count = 0;
	u32 i;
	char c;

	while(1) {
		c = inbyte();

		if(c == END) {
			//outbyte(END);
			break;
		}
		else if(!isdigit(c)) {
			if(c == '\n' || c == '\r') {
				if(features_count != 0) { /* New line */
					outbyte(ACK);
					examples_count++;
					features_count = 0;
				}
			}
			else /* New feature */
				features_count++;
			continue;
		}

		if( (examples_count >= DATA_SIZE) || (features_count >= (INPUT_SIZE+1)) ) {
			outbyte(ERROR);
			xil_printf("Invalid dataset size\n");
			break;
		}

		data[examples_count*(INPUT_SIZE+1) + features_count] *= 10;
		data[examples_count*(INPUT_SIZE+1) + features_count] += (u8)strtol(&c, NULL, 10);
	}


	u32 total_data_size = (INPUT_SIZE+1)*(u32)examples_count + features_count;
	xil_printf("Received %u training examples, %u features and labels.\n", examples_count, total_data_size);
	xil_printf("Last training example is:\n");
	for(i = total_data_size - (INPUT_SIZE+1); i < total_data_size; i++) {
		xil_printf("%u,", data[i]);
	}

	xil_printf("\nExiting\n");
}

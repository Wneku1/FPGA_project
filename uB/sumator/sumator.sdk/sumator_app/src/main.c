/*
 * main.c
 *
 *  Created on: 11.06.2021
 *      Author: sebas
 */


/*
 * main.c
 *
 *  Created on: 11.06.2021
 *      Author: sebas
 */


#include <stdio.h>
#include "sum_ip.h"
#include "xil_io.h"
#include "xparameters.h"

#define SUM_BASE_ADDR XPAR_SUM_IP_0_S00_AXI_BASEADDR
#define INFO_REG SUM_IP_S00_AXI_SLV_REG0_OFFSET
#define INPUT_ADDR SUM_IP_S00_AXI_SLV_REG1_OFFSET
#define READY SUM_IP_S00_AXI_SLV_REG2_OFFSET
#define OUTPUT_ADDR SUM_IP_S00_AXI_SLV_REG3_OFFSET

#define OFFSET_PROCESS 1
#define OFFSET_NUMB 2
#define OFFSET_BITS 8

#define M 7
#define N 4

#define NUBMERS_BITS M << OFFSET_NUMB | N << OFFSET_BITS
#define CLEAR_ONE NUBMERS_BITS | 1
#define CLEAR_ZERO NUBMERS_BITS

uint64_t counter = 0;
void asd()
{
    while(counter < 1000*1*60)
    {
    	counter++;
    }
    counter = 0;
}

void calculate_sum()
{
	uint8_t liczby_do_zesumowania[M] = {2, 2, 2, 1, 1, 1, 2};
	SUM_IP_mWriteReg(SUM_BASE_ADDR, INFO_REG, NUBMERS_BITS);
	SUM_IP_mWriteReg(SUM_BASE_ADDR, INFO_REG, CLEAR_ONE); // CLEAR 1
	SUM_IP_mWriteReg(SUM_BASE_ADDR, INFO_REG, CLEAR_ZERO); // CLEAR 0

	for(int j=0; j<N; ++j)
	{
		uint32_t arg = 0;
		//print("ARG ");

		for(int i=0; i<M; ++i)
		{
			arg |= ((liczby_do_zesumowania[i] >> j) & 1) << i;
		}

		SUM_IP_mWriteReg(SUM_BASE_ADDR, INPUT_ADDR, arg);

		SUM_IP_mWriteReg(SUM_BASE_ADDR, INFO_REG, NUBMERS_BITS | 2); // PRCOESS 1

		while( (SUM_IP_mReadReg(SUM_BASE_ADDR, READY)) != 1);


		SUM_IP_mWriteReg(SUM_BASE_ADDR, INFO_REG, NUBMERS_BITS); // PRCOESS 1

		//xil_printf("%d", arg);
		//print("\n\r");
		//asd();

		SUM_IP_mReadReg(SUM_BASE_ADDR, OUTPUT_ADDR);
		//xil_printf("\n %d \n\r", debug);
	}
}

int main()
{
    //init_platform();
    print("Hello World\n\r");

    calculate_sum();

//    while(1)
//    {
//    	uint8_t debug = SUM_IP_mReadReg(SUM_BASE_ADDR, OUTPUT_ADDR);
//    	xil_printf("\n %d \n\r", debug);
//    }


    // cleanup_platform();
    return 0;
}

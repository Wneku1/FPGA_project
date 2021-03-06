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
#include "platform.h"
#include "sum_ip.h"
#include "xil_io.h"
#include "xparameters.h"
#include "xil_printf.h"

#define SUM_BASE_ADDR XPAR_SUM_IP_0_S00_AXI_BASEADDR
#define INFO_REG SUM_IP_S00_AXI_SLV_REG0_OFFSET
#define INPUT_ADDR SUM_IP_S00_AXI_SLV_REG1_OFFSET
#define READY SUM_IP_S00_AXI_SLV_REG2_OFFSET
#define OUTPUT_ADDR SUM_IP_S00_AXI_SLV_REG3_OFFSET

#define OFFSET_PROCESS 1
#define OFFSET_NUMB 2
#define OFFSET_BITS 8

#define NUBMERS_BITS number_of_numbers << OFFSET_NUMB | numberOfBits << OFFSET_BITS
#define CLEAR_ONE NUBMERS_BITS | 1
#define CLEAR_ZERO NUBMERS_BITS

void start_screen()
{
	printf("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n");
	printf("++++++++++++++++\tSumainator \t ++++++++++++++++++\n");
	printf("++++++++++++++ Bo dodawanie to nasza pasja ++++++++++++++++\n");
	printf("+++\t\t\t\t\t\t\t+++\n");
	printf("+++++++++++++ Sebastian Wnek, Rafal Kosciej +++++++++++++++\n");
	printf("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n");
}

unsigned int count_bits(unsigned int n)
{
   unsigned int count = 0;
   while (n)
   {
        count++;
        n >>= 1;
    }
    return count;
}

uint32_t calculate_sum(uint32_t *arrayOfNumbers, uint8_t number_of_numbers, uint8_t numberOfBits)
{
	SUM_IP_mWriteReg(SUM_BASE_ADDR, INFO_REG, NUBMERS_BITS);
	SUM_IP_mWriteReg(SUM_BASE_ADDR, INFO_REG, CLEAR_ONE);
	SUM_IP_mWriteReg(SUM_BASE_ADDR, INFO_REG, CLEAR_ZERO);

	for(int j = 0; j < numberOfBits; ++j)
	{
		uint32_t arg = 0;

		for(int i = 0; i < number_of_numbers; ++i)
		{
			arg |= ((arrayOfNumbers[i] >> j) & 1) << i;
		}

		SUM_IP_mWriteReg(SUM_BASE_ADDR, INPUT_ADDR, arg);

		SUM_IP_mWriteReg(SUM_BASE_ADDR, INFO_REG, NUBMERS_BITS | 2); // PRCOESS 1

		while( (SUM_IP_mReadReg(SUM_BASE_ADDR, READY)) != 1);

		SUM_IP_mWriteReg(SUM_BASE_ADDR, INFO_REG, NUBMERS_BITS); // PRCOESS 1
	}
	uint32_t toRetur = SUM_IP_mReadReg(SUM_BASE_ADDR, OUTPUT_ADDR);
	return toRetur;
}

void inputMenu()
{
	uint8_t numberOfNumber;
	uint8_t numberOfBits = 0;

	print("[*] Podaj ilosc liczb do zsumowania: ");
	scanf("%hhu", &numberOfNumber);
	print("\n\r");
	print("[+] Ilosc liczb: ");
	xil_printf("%d \n\r", numberOfNumber);

	uint32_t numberTable[numberOfNumber];

	for (size_t i = 0; i < numberOfNumber; i++)
	{
		print("[*] Podaj liczbe: ");
		scanf("%lu", &numberTable[i]);
		print("\n\r");
		uint8_t tmp =  count_bits(numberTable[i]);
		if(tmp > numberOfBits)
			numberOfBits = tmp;
	}

	printf("[+] Liczba bitow: %d\n", numberOfBits);

	print("\n\r");
	print("[+] Argumenty: ");

	for (size_t i = 0; i < numberOfNumber; i++)
	{
		printf("%lu, ", numberTable[i]);
	}

	printf("\n\r");
	printf("[+] Wynik: ");
	uint32_t sum = calculate_sum(numberTable, numberOfNumber, numberOfBits);
	printf("%lu \n\r", sum);
	printf("\n\n");
}

int main()
{
    init_platform();
    start_screen();

	while(1)
	{
		inputMenu();
	}

    return 0;
}

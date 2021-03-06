/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "JG_ZYNQ_RGB_Core.h"

#define RGB XPAR_JG_ZYNQ_RGB_CORE_0_S00_AXI_BASEADDR
#define REG0 JG_ZYNQ_RGB_CORE_S00_AXI_SLV_REG0_OFFSET
#define REG1 JG_ZYNQ_RGB_CORE_S00_AXI_SLV_REG1_OFFSET

static void delay(int dly)
{
	int i, j;
	for (i = 0; i < dly; i++)
		for (j = 0; j < 0xFFFF; j++)
			;
}

int main()
{
	int num_writes;

    init_platform();
    num_writes = 0;
    print("Custom RGB Test\n\r");

    while (1){
    	JG_ZYNQ_RGB_CORE_mWriteReg(RGB, REG0, 0);
    	delay(2000);
    	JG_ZYNQ_RGB_CORE_mWriteReg(RGB, REG0, 1);
    	delay(2000);
    	num_writes = JG_ZYNQ_RGB_CORE_mReadReg(RGB, REG1);
    	xil_printf("%d writes to peripheral\n\r", num_writes);
    }

    cleanup_platform();
    return 0;
}

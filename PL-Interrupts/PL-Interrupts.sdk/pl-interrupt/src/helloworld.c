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
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* XILINX CONSORTIUM BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
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
#include "xgpiops.h"
#include "xscugic.h"
#include "xil_exception.h"

#define	INT_CFG0_OFFSET	0x00000C00


// Parameter definitions
#define SW1_INT_ID				61
#define	SW2_INT_ID				62
#define	SW3_INT_ID				63
#define INTC_DEVICE_ID 			XPAR_PS7_SCUGIC_0_DEVICE_ID
#define	INT_TYPE_RISING_EDGE	0x03
#define INT_TYPE_HIGHLEVEL		0x01
#define INT_TYPE_MASK			0x03

static XScuGic INTCInst;

//----------------------------------------------------
// PROTOTYPE FUNCTIONS
//----------------------------------------------------
static void SW_intr_Handler(void *param);
static int InterruptSystemSetup(XScuGic *XScuGicInstancePtr);
static int IntcInitFunction(u16 DeviceId);

static void SW_intr_Handler(void *param)
{
	int sw_id = (int)param;

	printf("SW%d int\n\r", sw_id);

}

//----------------------------------------------------
// INITIAL SETUP FUNCTIONS
//----------------------------------------------------

void IntcTypeSetup(XScuGic *InstancePtr, int intId, int intType)
{
	int mask;

	intType &= INT_TYPE_MASK;
	mask = XScuGic_DistReadReg(InstancePtr, INT_CFG0_OFFSET + (intId/16)*4);
	mask &= ~(INT_TYPE_MASK << (intId%16)*2);
	mask |= intType << ((intId%16)*2);
	XScuGic_DistWriteReg(InstancePtr, INT_CFG0_OFFSET + (intId/16)*4, mask);
}

int InterruptSystemSetup(XScuGic *XScuGicInstancePtr)
{
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			 	 	 	 	 	 (Xil_ExceptionHandler)XScuGic_InterruptHandler,
			 	 	 	 	 	 XScuGicInstancePtr);
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

int IntcInitFunction(u16 DeviceId)
{
	XScuGic_Config *IntcConfig;
	int status;

	// Interrupt controller initialisation
	IntcConfig = XScuGic_LookupConfig(DeviceId);
	status = XScuGic_CfgInitialize(&INTCInst, IntcConfig, IntcConfig->CpuBaseAddress);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Call to interrupt setup
	status = InterruptSystemSetup(&INTCInst);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Connect SW1~SW3 interrupt to handler
	status = XScuGic_Connect(&INTCInst,
							 SW1_INT_ID,
					  	  	 (Xil_ExceptionHandler)SW_intr_Handler,
					  	  	 (void *)1);
	if(status != XST_SUCCESS) return XST_FAILURE;

	status = XScuGic_Connect(&INTCInst,
							 SW2_INT_ID,
					  	  	 (Xil_ExceptionHandler)SW_intr_Handler,
					  	  	 (void *)2);
	if(status != XST_SUCCESS) return XST_FAILURE;

	status = XScuGic_Connect(&INTCInst,
							 SW3_INT_ID,
					  	  	 (Xil_ExceptionHandler)SW_intr_Handler,
					  	  	 (void *)3);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Set interrupt type of SW1~SW3 to rising edge
	IntcTypeSetup(&INTCInst, SW1_INT_ID, INT_TYPE_RISING_EDGE);
	IntcTypeSetup(&INTCInst, SW2_INT_ID, INT_TYPE_RISING_EDGE);
	IntcTypeSetup(&INTCInst, SW3_INT_ID, INT_TYPE_RISING_EDGE);

	// Enable SW1~SW3 interrupts in the controller
	XScuGic_Enable(&INTCInst, SW1_INT_ID);
	XScuGic_Enable(&INTCInst, SW2_INT_ID);
	XScuGic_Enable(&INTCInst, SW3_INT_ID);

	return XST_SUCCESS;
}

int main(void)
{
    init_platform();

    print("PL int test\n\r");
    // interrupt init
	IntcInitFunction(INTC_DEVICE_ID);

    while (1) {

    }
    cleanup_platform();

    return 0;
}

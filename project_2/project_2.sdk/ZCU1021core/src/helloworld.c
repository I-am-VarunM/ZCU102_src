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
#include "sysmon_header.h"
#include "sysmonpsu_header.h"
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xgpiops.h"
#include "scugic_header.h"
#include "xscugic.h"
#include "xsysmonpsu.h"
#include "xsysmon.h"
#include "gpio_header.h"
#include "system_test.h"
#include "xtime_l.h"
#include "uart_header.h"
#include "pmodtmp2.h"
#include <stdlib.h>
#include "sleep.h"
#include <stdlib.h>

//#define RUN_SUBMODULES


//#define CHANNEL_GPIO_IN_LOAD_OUT 	1
#define STATUS_POLLING_PAUSED 		0x02
#define STATUS_POLLING_CONTINUED 	0x03


//Helper functions
void controlPolling();
int runMeasurement(double* measurement_buffer);

//Initialize global control variables
int button2_on;
int psu_rem_temp_max;
int psu_rem_temp_max_changed;


#ifndef RUN_SUBMODULES


int main()
{
    init_platform();

    //Initialize global variables
	button2_on = 0;
	psu_rem_temp_max = 0;

	print("Start\n");


    //========================================================//


	//System Monitor Readout. Interrupt with pushbutton
	//while(button2_on == 0)
	//for(int i=0;i<10;i++)
	{
		controlPolling();
		printf("\n");
	}
    cleanup_platform();
    return 0;
}
#endif

void controlPolling()
{
	if(1){
		//sendStatusMsgViaUart(STATUS_POLLING_CONTINUED,0);
		//sleep(0.5);

		double *measurement_buffer;
		measurement_buffer = (double *) calloc(10000, sizeof(double));
		int amount_meas_datapoints = runMeasurement(measurement_buffer); // incase anyone wants to use measured points
		printf("Hi");
		for(int i=0; i<amount_meas_datapoints; i++)
			{printf("value %f, index %i, \n",measurement_buffer[i], i);
			if((i%998)==0 && i!=0)
				sleep(200);
			 }
		free(measurement_buffer);
	}
}

int runMeasurement(double* measurement_buffer) {
	XTime* Xtime = 0;
	XTime time = 0;
	float value = 0;
	XTime_GetTime(Xtime);
	int starting_time = *Xtime / 100000;
	int current_time = starting_time;
	int end_time = 100 + starting_time;
	int buffer_index = 0;
	int last_measurement_time = 0;
	printf("runMeasuremnet \n");
	//printf("start time %i, end time %i\n", starting_time, end_time);
	while (current_time < end_time) {
		if(current_time > last_measurement_time){
				SysMonPsuReadCurrentTempRem(XPAR_PSU_AMS_DEVICE_ID, &value,
						&time);
				measurement_buffer[buffer_index++] = (double)value;

				last_measurement_time++;
		}
		XTime_GetTime(Xtime);
		current_time = *Xtime / 100000;
	}
	XTime_GetTime(Xtime);
	current_time = *Xtime / 100000;
	printf("Measurement finished in %i ms\n", (current_time - starting_time));
	/*sleep(1);
	XTime_GetTime(Xtime);
	current_time = *Xtime / 100000;
	printf("Start time%d\n",current_time);
	{for(long i=0;i<10000;i++)
		{ usleep(300);
		SysMonPsuReadCurrentTempRem(XPAR_PSU_AMS_DEVICE_ID, &value,&time);
		measurement_buffer[buffer_index++] = (double)value;}
	XTime_GetTime(Xtime);
		current_time = *Xtime / 100000;}
printf("End time%d",current_time); */
	return buffer_index;
}

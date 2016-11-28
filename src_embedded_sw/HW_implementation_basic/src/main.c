#include "xaxidma.h"
#include "xparameters.h"
#include "xdebug.h"
#include "utility.h"

/* Device hardware build related constants. */

#define DMA_DEV_ID        		XPAR_AXIDMA_0_DEVICE_ID
#define DDR_BASE_ADDR			XPAR_DDR_MEM_BASEADDR

#ifndef DDR_BASE_ADDR
#warning CHECK FOR THE VALID DDR ADDRESS IN XPARAMETERS.H, DEFAULT SET TO 0x01000000
#define MEM_BASE_ADDR         	0x01000000
#else
#define MEM_BASE_ADDR			(DDR_BASE_ADDR + 0x1000000)
#endif

#define TX_BUFFER_BASE			(MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE			(MEM_BASE_ADDR + 0x00300000)
#define RX_BUFFER_HIGH			(MEM_BASE_ADDR + 0x004FFFFF)


/* Data definition */

#define NB_FEATURES				13
#define NB_HIDDEN_NODES			20
#define NB_CLASSES				4
#define SINGLE_ENDED			1

#define TRAIN					0
#define GIVEN_WEIGHTS			1
#define NB_EXAMPLES				16
#define NB_OUTPUT_NODES			(SINGLE_ENDED ? 1 : NB_CLASSES)

#define NB_WEIGHTS1				(NB_FEATURES+1)*NB_HIDDEN_NODES
#define NB_WEIGHTS2				(NB_HIDDEN_NODES+1)*NB_OUTPUT_NODES

u8 features[NB_FEATURES*NB_EXAMPLES]    = {225,92,143,53,250,180,194,86,206,144,151,246,193,
										   144,96,75,0,129,164,175,76,93,109,154,199,190,
										   141,129,199,111,134,180,206,96,255,145,148,178,217,
										   78,48,0,0,75,96,35,86,0,42,154,57,82,
										   75,57,108,61,134,103,68,255,0,79,210,43,114,
										   100,72,47,76,129,100,88,214,19,147,134,36,68,
										   117,71,117,99,228,48,78,50,55,102,73,9,104,
										   118,165,136,138,147,26,76,65,43,137,67,21,84,
										   113,126,136,214,120,11,68,81,43,146,45,15,90,
										   104,198,126,166,156,67,75,29,44,126,78,9,98,
										   225,92,143,53,250,180,194,86,206,144,151,246,193,
										   144,96,75,0,129,164,175,76,93,109,154,199,190,
										   141,129,199,111,134,180,206,96,255,145,148,178,217,
										   78,48,0,0,75,96,35,86,0,42,154,57,82,
										   75,57,108,61,134,103,68,255,0,79,210,43,114,
										   100,72,47,76,129,100,88,214,19,147,134,36,68};

u8 labels[NB_EXAMPLES] 					= {1,1,1,2,2,2,3,3,3,3,1,1,1,2,2,2};

int weights1[NB_WEIGHTS1];
int weights2[NB_WEIGHTS2];
int results[NB_EXAMPLES];
int predictions[NB_EXAMPLES];

int nb_data_words, nb_result_words, nb_pred_words;

/* Function Prototypes */

#if (!defined(DEBUG))
extern void xil_printf(const char *format, ...);
#endif

int process(u16 DeviceId);
void DisplayMatrix(u32* mat, u32 I, u32 J);

XAxiDma AxiDma;

int main()
{
	xil_printf("\r\n--- Entering main() --- \r\n");

	nb_data_words = 1 + ceil_div(NB_WEIGHTS1,2) + ceil_div(NB_WEIGHTS2,2)
					  + ceil_div(NB_FEATURES+1,4)*NB_EXAMPLES; // 4 features/labels per transfer
	nb_result_words = ceil_div(NB_EXAMPLES,2);
	nb_pred_words = ceil_div(NB_EXAMPLES,8);

	xil_printf("#DEBUG: nb_pred_words = %d\n\r", nb_pred_words);

	process(DMA_DEV_ID);

	xil_printf("--- Exiting main() --- \r\n");

	return XST_SUCCESS;
}

int process(u16 DeviceId)
{
	XAxiDma_Config *CfgPtr;
	int Status;
	u32 i, j;
	u32 *TxBufferPtr;
	u32 *RxBufferPtr;

	TxBufferPtr = (u32 *)TX_BUFFER_BASE;
	RxBufferPtr = (u32 *)RX_BUFFER_BASE;

	for(i = 0; i < NB_WEIGHTS1; i++) {
		weights1[i] = 2*i-2000;
	}
	for(i = 0; i < NB_WEIGHTS2; i++) {
			weights2[i] = 90*i+1;
	}

	/* Initialize the XAxiDma device. */
	CfgPtr = XAxiDma_LookupConfig(DeviceId);
	if (!CfgPtr) {
		xil_printf("No config found for %d\r\n", DeviceId);
		return XST_FAILURE;
	}
	Status = XAxiDma_CfgInitialize(&AxiDma, CfgPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}
	xil_printf("Finish initializing configurations for AXI DMA\n\r");

	if(XAxiDma_HasSg(&AxiDma)){
		xil_printf("Device configured as SG mode \r\n");
		return XST_FAILURE;
	}
	xil_printf("AXI DMA is configured as Simple Transfer mode\n\r");

	/* Disable interrupts, we use polling mode */
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	/* Initialize Tx buffer */
	TxBufferPtr[0] = ((TRAIN == 1) << 15) | ((GIVEN_WEIGHTS == 0) << 14) | (NB_EXAMPLES & 0xFFF);
	for(i = 0; i <  (NB_WEIGHTS1/2); i++) {
		TxBufferPtr[1 + i] = ( (weights1[i*2 + 1] & 0xFFF) << 12)
							   | (weights1[i*2] & 0xFFF);
	}
	if ((NB_WEIGHTS1 % 2) == 1) {
		TxBufferPtr[1 + (NB_WEIGHTS1/2)] = weights1[NB_WEIGHTS1 - 1];
	}
	for(i = 0; i <  (NB_WEIGHTS2/2); i++) {
		TxBufferPtr[1 + ceil_div(NB_WEIGHTS1,2) + i] = ( (weights2[i*2 + 1] & 0xFFF) << 12)
														 | (weights2[i*2] & 0xFFF);
	}
	if ((NB_WEIGHTS2 % 2) == 1) {
		TxBufferPtr[1 + ceil_div(NB_WEIGHTS1,2) + (NB_WEIGHTS2/2)] = weights2[NB_WEIGHTS2 - 1];
	}
	for(i = 0; i < NB_EXAMPLES; i++) {
		for(j = 0; j < (int)(NB_FEATURES/4); j++) {
			TxBufferPtr[1 + ceil_div(NB_WEIGHTS1,2) + ceil_div(NB_WEIGHTS2,2) + i*ceil_div(NB_FEATURES+1,4) + j]
						= ( features[i*NB_FEATURES + j*4 + 3] << 24 )
						| ( features[i*NB_FEATURES + j*4 + 2] << 16 )
						| ( features[i*NB_FEATURES + j*4 + 1] << 8 )
						|   features[i*NB_FEATURES + j*4 + 0];
		}
		unsigned temp = 1 + ceil_div(NB_WEIGHTS1,2) + ceil_div(NB_WEIGHTS2,2) + i*ceil_div(NB_FEATURES+1,4) + (NB_FEATURES/4);
		TxBufferPtr[temp] = 0;
		for(j = 0; j < (NB_FEATURES % 4); j++) {
			TxBufferPtr[temp] |= features[i*NB_FEATURES + (NB_FEATURES/4)*4 + j] << j*8;
		}
		TxBufferPtr[temp] |= labels[i] << (NB_FEATURES % 4)*8;
	}

//	// Debug
//	xil_printf("Length of STDATA: %d\r\n", nb_data_words);
//	for (i = 0; i < nb_data_words; i++) {
//		xil_printf("%x\r\n", TxBufferPtr[i]);
//	}


	/* Flush the SrcBuffer before the DMA transfer, in case the Data Cache is enabled */
	Xil_DCacheFlushRange((u32)TxBufferPtr, nb_data_words*4);

//	Status = XAxiDma_SimpleTransfer(&AxiDma,(u32) (RxBufferPtr),
//			nb_result_words*4, XAXIDMA_DEVICE_TO_DMA);
	Status = XAxiDma_SimpleTransfer(&AxiDma,(u32) (RxBufferPtr),
			nb_pred_words*4, XAXIDMA_DEVICE_TO_DMA);

	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = XAxiDma_SimpleTransfer(&AxiDma,(u32) (TxBufferPtr),
			nb_data_words*4, XAXIDMA_DMA_TO_DEVICE);

	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	xil_printf("Waiting for AXI DMA \n\r");

	while (XAxiDma_Busy(&AxiDma,XAXIDMA_DMA_TO_DEVICE)) {
		//wait
	}
	xil_printf("DMA_TO_DEVICE finishes \n\r");

	while (XAxiDma_Busy(&AxiDma,XAXIDMA_DEVICE_TO_DMA)) {
		//wait
	}
	xil_printf("DEVICE_TO_DMA finishes \n\r");

	/* Extracting results */
//	int temp;
//	for (i = 0; i < (NB_EXAMPLES/2); i++ ) {
//		temp = RxBufferPtr[i] & 0xFFF;
//		results[i*2] = temp;// | ((temp & 0x800) ? 0xF000 : 0); // perform sign extension on 12 bits
//		temp = (RxBufferPtr[i] >> 12) & 0xFFF;
//		results[i*2 + 1] = temp;// | ((temp & 0x800) ? 0xF000 : 0);
//	}
//	if ((NB_EXAMPLES % 2) == 1) {
//		results[NB_EXAMPLES - 1] = RxBufferPtr[(NB_EXAMPLES/2)] & 0xFFF;
//	}

	/* Extract labels */
	for (i = 0; i < (NB_EXAMPLES/8); i++ ) {
		for (j = 0; j < 8; j++) {
			predictions[i*8 + j] = (RxBufferPtr[i] >> (4*j)) & 0xF;
		}
	}
	//for (j = 0; j < ((NB_EXAMPLES%8) - 1); j++) {
	//	predictions[(NB_EXAMPLES/8)*8 + j] = (RxBufferPtr[NB_EXAMPLES/8] >> (4*j)) & 0xF;
	//}

//	xil_printf("Results received: \n\r");
//	for(i = 0; i < NB_EXAMPLES; i++) {
//		xil_printf("\t y(%d) = %x \n\r", i, results[i]);
//	}

	xil_printf("Predictions received: \n\r");
	for(i = 0; i < NB_EXAMPLES; i++) {
		xil_printf("\t y(%d) = %d \n\r", i, predictions[i]);
	}

	return XST_SUCCESS;
}

void DisplayMatrix(u32* mat, u32 I, u32 J)
{
	u32 i, j;
	xil_printf("[ ");
	for(i = 0; i < I; i++){
		if(i != 0)
			xil_printf("  ");
		for(j = 0; j < J; j++){
			xil_printf("%u", mat[i*J + j]);
			if(j != (J-1))
				xil_printf(", ");
		}
		if(i != (I-1))
			xil_printf(" ;\r\n");
	}
	xil_printf(" ]\r\n");
	return;
}

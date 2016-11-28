#ifndef SRC_UTILITY_HPP_
#define SRC_UTILITY_HPP_


#include "xil_printf.h"

/* Main NN architecture */
#define NB_FEATURES				13
#define NB_HIDDEN_NODES			20
#define NB_CLASSES				3
#define SINGLE_ENDED			0

#define NB_OUTPUT_NODES			(SINGLE_ENDED ? 1 : NB_CLASSES)
#define NB_WEIGHTS1				(NB_FEATURES+1)*NB_HIDDEN_NODES
#define NB_WEIGHTS2				(NB_HIDDEN_NODES+1)*NB_OUTPUT_NODES

/* Serial communication codes */
#define c_TERM_OUT 				'$'
#define c_ACK 					'%'
#define c_ERR 					'@'
#define c_END					'&'
#define c_DONE					'?'

enum session_t {TRAINING, PREDICTION};
enum option_t {GIVEN, RAND, PREV};

int ceil_div(int num, int den);
void send_code(char c);


#endif

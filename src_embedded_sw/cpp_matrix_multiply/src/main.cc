/*
 * Empty C++ Application
 */

#include <iostream>
#include "xparameters.h"
#include "xil_printf.h"
#include "Dense"

#define N	3
#define M	3
#define P	3

/* C-like data arrays */
u32 A_t[M*N] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
u32 B_t[M*P] = {2, 0, 0, 0, 2, 0, 0, 0, 2};
u32* C_t;

/* New custom type for Eigen matrices */
typedef Eigen::Matrix<u32, 3, 3, Eigen::RowMajor> Matrix3u;
Matrix3u A_m,B_m,C_m;

void DisplayMatrix(u32* mat, u32 I, u32 J);

int main()
{
	/* Copy data from arrays to matrices */
	A_m = Eigen::Map<Matrix3u>( A_t );
	B_m = Eigen::Map<Matrix3u>( B_t );

	C_m = A_m*B_m;

	/* Set C_t to point on the C_m memory block */
	Eigen::Map<Matrix3u>( C_t, C_m.rows(), C_m.cols() ) = C_m;

	xil_printf("Result: C = \r\n");
	DisplayMatrix(C_t, N, P);

	return 0;
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


//
//  eigen_multiply.cpp
//  NN Project Cpp
//
//  Created by Paul-Edouard on 16/10/16.
//  Copyright © 2016 NUS EE4218. All rights reserved.
//

#include <iostream>
#include "Dense"

#define N	3
#define M	3
#define P	3

typedef uint32_t u32;
typedef uint8_t u8;

/* C-like data arrays */
u32 A_t[M*N] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
u32 B_t[M*P] = {2, 0, 0, 0, 2, 0, 0, 0, 2};
u32* C_t = NULL;

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
    //Eigen::Map<Matrix3u>( C_t, C_m.rows(), C_m.cols() ) = C_m;
    C_t = C_m.data();
    
    printf("Result: C = \r\n");
    DisplayMatrix(C_t, N, P);
    
    return 0;
}

void DisplayMatrix(u32* mat, u32 I, u32 J)
{
    u32 i, j;
    printf("[ ");
    for(i = 0; i < I; i++){
        if(i != 0)
            printf("  ");
        for(j = 0; j < J; j++){
            printf("%u", mat[i*J + j]);
            if(j != (J-1))
                printf(", ");
        }
        if(i != (I-1))
            printf(" ;\r\n");
    }
    printf(" ]\r\n");
    return;
}


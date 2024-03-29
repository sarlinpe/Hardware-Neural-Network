//
//  main.cpp
//  NN Project Cpp
//
//  Created by Paul-Edouard on 16/10/16.
//  Copyright © 2016 NUS EE4218. All rights reserved.
//

//#include <iostream>
#include <math.h>
//#include <ctime>
#include "xparameters.h"
#include "xil_printf.h"
#include "xtime_l.h"
#include "Dense"

#include "data.h"

#define INPUT_SIZE			13
#define HIDDEN_SIZE			20
#define NUM_LABELS			3

#define WEIGHTS_INIT_EPS	0.12

#define ITERATIONS			10
#define LEARNING_RATE		0.0005

u32 data_size = 160;
u32 train_size = 90;
u32 val_size = data_size - train_size;

using namespace Eigen;

typedef Matrix<u8, Dynamic, Dynamic, Eigen::RowMajor> Data_T;
Matrix<float, HIDDEN_SIZE, INPUT_SIZE+1> Theta1;
Matrix<float, NUM_LABELS, HIDDEN_SIZE+1> Theta2;

void feedforward(const Ref<const Data_T> data_in, Ref<MatrixXf> h);
float Sigmoid(float x);

int main()
{
    xil_printf("Creating matrices...\n\r");

    Data_T Data(data_size, INPUT_SIZE+1);
    Matrix<u8, Dynamic, Dynamic> Training_set(train_size, INPUT_SIZE + 1);
    Matrix<u8, Dynamic, Dynamic> Validation_set(data_size - train_size, INPUT_SIZE + 1);

    Data = Eigen::Map<Data_T>( data, data_size, INPUT_SIZE+1 );
    PermutationMatrix<Dynamic, Dynamic> Perm(data_size);
    Perm.setIdentity();
    std::random_shuffle(Perm.indices().data(), Perm.indices().data()+Perm.indices().size());
    Data = Perm * Data;

    Training_set = Data.block(0,0, train_size, INPUT_SIZE + 1);
    Validation_set = Data.block(train_size,0, val_size, INPUT_SIZE + 1);

    // Generate seed for the random number generator
    u64 actual_time;
    XTime_GetTime(&actual_time);
    std::srand((u32) (actual_time >> 0));
    // Initialize weights
    Theta1.setRandom();
    Theta2.setRandom();
    Theta1 = WEIGHTS_INIT_EPS*Theta1;
    Theta2 = WEIGHTS_INIT_EPS*Theta2;

    Matrix<u8, Dynamic, Dynamic> a_1(train_size, INPUT_SIZE+1); // maybe perform features scaling ?
    MatrixXf a_2(train_size, HIDDEN_SIZE+1);
    MatrixXf z_1(train_size, HIDDEN_SIZE);
    MatrixXf z_2(train_size, NUM_LABELS);
    MatrixXf h_train(train_size, NUM_LABELS);

    Matrix<u8, Dynamic, Dynamic> y_logic(train_size, NUM_LABELS);
    MatrixXf delta_2(train_size, HIDDEN_SIZE);
    MatrixXf delta_3(train_size, NUM_LABELS);

    u32 i;
    float cost;

    xil_printf("Starting initialization before training...\n\r");
    a_1 = Training_set;
    a_1.col(0).setOnes();
    a_2.col(0).setOnes();

    y_logic.setZero();
    for(i = 0; i < train_size; i++) {
        y_logic(i,Training_set(i,0)-1) = 1;
    }

    xil_printf("Starting training...\n\r");

    for(i = 0; i < ITERATIONS; i++)
    {
        z_1 = a_1.cast<float>() * Theta1.transpose();
        a_2.block(0,1, train_size, HIDDEN_SIZE) = z_1.unaryExpr(&Sigmoid);
        z_2 = a_2 * Theta2.transpose();
        h_train = z_2.unaryExpr(&Sigmoid);

        // Gradient
        delta_3 = h_train - y_logic.cast<float>();
        delta_2 = delta_3 * Theta2.block<NUM_LABELS,HIDDEN_SIZE>(0,1);
        delta_2 = delta_2.cwiseProduct(a_2.block(0,1,train_size,HIDDEN_SIZE));
        delta_2 = delta_2.cwiseProduct(MatrixXf::Ones(train_size,HIDDEN_SIZE) - a_2.block(0,1,train_size,HIDDEN_SIZE));

        Theta1 = Theta1 - LEARNING_RATE * delta_2.transpose()*a_1.cast<float>();
        Theta2 = Theta2 - LEARNING_RATE * delta_3.transpose()*a_2.cast<float>();

        cost = delta_3.array().pow(2).sum();
        xil_printf("Iteration %u, Cost: %u\n\r",i, u32(cost*100));
    }

    /* Training set accuracy */
    Matrix<u8, Dynamic, 1> y_pred_train(train_size);
    float accuracy_train = 0;
    for(i = 0; i < train_size; i++) {
        h_train.row(i).maxCoeff( &y_pred_train(i,0) );
        accuracy_train += ((y_pred_train(i,0)+1) == Training_set(i,0));
    }
    accuracy_train *= 100./train_size;
    xil_printf("\nTraining Set Accuracy: %u\n\r", u32(accuracy_train));

    /* Validation set accuracy */
    MatrixXf h_val(val_size, NUM_LABELS);
    Matrix<u8, Dynamic, 1> y_pred_val(val_size);
    float accuracy_val = 0;
    feedforward(Validation_set, h_val);
    for(i = 0; i < val_size; i++) {
        h_val.row(i).maxCoeff( &y_pred_val(i,0) );
        accuracy_val += ((y_pred_val(i,0)+1) == Validation_set(i,0));
    }
    accuracy_val *= 100./val_size;
    xil_printf("Validation Set Accuracy: %u\n\r", u32(accuracy_val));

    xil_printf("Exiting...\n\r");
    return 0;
}

void feedforward(const Ref<const Data_T> data_in, Ref<MatrixXf> h)
{
	u32 size = static_cast<float>(data_in.rows());

    Matrix<u8, Dynamic, Dynamic> a_1(size, INPUT_SIZE+1);
    MatrixXf z_1(size, HIDDEN_SIZE);
    MatrixXf z_2(size, NUM_LABELS);
    MatrixXf a_2(size, HIDDEN_SIZE+1);

    a_1 = data_in;
    a_1.col(0).setOnes();
    a_2.col(0).setOnes();

    z_1 = a_1.cast<float>() * Theta1.transpose();
    a_2.block(0,1, size, HIDDEN_SIZE) = z_1.unaryExpr(&Sigmoid);
    z_2 = a_2 * Theta2.transpose();
    h = z_2.unaryExpr(&Sigmoid);
}

float Sigmoid(float x)
{
    return 1/(1 + std::exp(-x) );
}


# Embedded Software 

This directory contains the C++ software code running on the processing system, as well as the Hardware Description Files (HDF) of the different implementations.

## Software

The final SDK project `SW_HW_serial` communicates directly with the standalone Python script and allows to use both software or hardware implementations. In the first case the Eigen library is used, while in the second one the data and opcode are simply forwarded to the PL using the Direct Memory Access (DMA) interface, with acts as a bridge between the PL and the DRAM, where the data is dynamically stored.

As the back propagation algorithm needs the whole dataset for each iteration, a new DMA transfert is initiated each time, if the training has not converged yet.

## HDF

* `PS_PL_coprocessing`: description of the Block RAM implementation hardware.
* `PS_PL_coprocessing_distr`: description of the Distributed RAM implementation hardware.
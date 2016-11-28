onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+PS_PL_coprocessing_distributed -pli "/opt/Xilinx/Vivado/2016.2/lib/lnx64.o/libxil_vsim.so" -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -L xpm -L processing_system7_bfm_v2_0_5 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_9 -L lib_pkg_v1_0_2 -L fifo_generator_v13_1_1 -L lib_fifo_v1_0_5 -L lib_srl_fifo_v1_0_2 -L axi_datamover_v5_1_11 -L axi_sg_v4_1_3 -L axi_dma_v7_1_10 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_9 -L axi_data_fifo_v2_1_8 -L axi_crossbar_v2_1_10 -L axi_protocol_converter_v2_1_9 -O5 xil_defaultlib.PS_PL_coprocessing_distributed xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {PS_PL_coprocessing_distributed.udo}

run -all

endsim

quit -force

onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -pli "/opt/Xilinx/Vivado/2016.2/lib/lnx64.o/libxil_vsim.so" -lib xil_defaultlib PS_only_design_opt

do {wave.do}

view wave
view structure
view signals

do {PS_only_design.udo}

run -all

quit -force

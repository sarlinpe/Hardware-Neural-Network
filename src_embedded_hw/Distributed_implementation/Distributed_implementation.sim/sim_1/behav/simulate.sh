#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2016.2"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim test_main_controller_distributed_ff_behav -key {Behavioral:sim_1:Functional:test_main_controller_distributed_ff} -tclbatch test_main_controller_distributed_ff.tcl -view /home/pe_s/Documents/EHSD/Project/Hardware_designs/Distributed_implementation/test_main_controller_distributed_ff.wcfg -log simulate.log

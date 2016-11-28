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
ExecStep $xv_path/bin/xsim test_main_controller_v1_behav -key {Behavioral:sim_1:Functional:test_main_controller_v1} -tclbatch test_main_controller_v1.tcl -view /home/pe_s/Documents/EHSD/Project/Hardware_designs/project_module_workspace/test_main_controller_v1_sim.wcfg -log simulate.log

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
ExecStep $xv_path/bin/xelab -wto c71f2a3bf1fc4951bd64646b58672c01 -m64 --debug typical --relax --mt 8 -L work -L xil_defaultlib -L secureip --snapshot test_main_controller_v1_behav xil_defaultlib.test_main_controller_v1 -log elaborate.log

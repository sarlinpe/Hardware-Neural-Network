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
ExecStep $xv_path/bin/xelab -wto 426ae4ba922749efa0c50381d78f039e -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot test_main_controller_distributed_ff_behav xil_defaultlib.test_main_controller_distributed_ff -log elaborate.log

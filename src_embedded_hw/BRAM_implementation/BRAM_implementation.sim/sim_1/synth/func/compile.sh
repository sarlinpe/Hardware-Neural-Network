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
echo "xvhdl -m64 --relax -prj test_main_controller_v1_vhdl.prj"
ExecStep $xv_path/bin/xvhdl -m64 --relax -prj test_main_controller_v1_vhdl.prj 2>&1 | tee -a compile.log

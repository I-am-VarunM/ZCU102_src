#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/Software/xilinx/2019.1-sdx/SDK/2019.1/bin:/Software/xilinx/2019.1-sdx/Vivado/2019.1/ids_lite/ISE/bin/lin64:/Software/xilinx/2019.1-sdx/Vivado/2019.1/bin
else
  PATH=/Software/xilinx/2019.1-sdx/SDK/2019.1/bin:/Software/xilinx/2019.1-sdx/Vivado/2019.1/ids_lite/ISE/bin/lin64:/Software/xilinx/2019.1-sdx/Vivado/2019.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu102_src/project_2/project_2.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log Base_Zynq_MPSoC_wrapper.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source Base_Zynq_MPSoC_wrapper.tcl -notrace



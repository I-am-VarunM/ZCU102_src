connect -url tcp:127.0.0.1:3121
source /Software/xilinx/2019.1-sdx/SDK/2019.1/scripts/sdk/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A4711C"} -index 1
rst -system
after 3000
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A4711C"} -index 1
reset_apu
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A4711C" && level==0} -index 0
fpga -file /home/manvar00/Downloads/Zcu_102_withmodule/project_2/project_2.runs/impl_1/Base_Zynq_MPSoC_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A4711C"} -index 1
loadhw -hw /home/manvar00/Downloads/Zcu_102_withmodule/project_2/project_2.sdk/system.hdf -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A4711C"} -index 1
source /home/manvar00/Downloads/Zcu_102_withmodule/project_2/project_2.sdk/psu_init.tcl
psu_init
after 1000
psu_ps_pl_isolation_removal
after 1000
psu_ps_pl_reset_config
catch {psu_protection}
targets -set -nocase -filter {name =~"*A53*0" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A4711C"} -index 1
rst -processor
dow /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu102_src/project_2/project_2.sdk/ZCU1021core/Debug/ZCU1021core.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~"*A53*0" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A4711C"} -index 1
con

vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/smartconnect_v1_0
vlib riviera/axi_protocol_checker_v2_0_1
vlib riviera/axi_vip_v1_1_1
vlib riviera/processing_system7_vip_v1_0_3
vlib riviera/xlconcat_v2_1_1
vlib riviera/util_vector_logic_v2_0_1

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_1 riviera/axi_protocol_checker_v2_0_1
vmap axi_vip_v1_1_1 riviera/axi_vip_v1_1_1
vmap processing_system7_vip_v1_0_3 riviera/processing_system7_vip_v1_0_3
vmap xlconcat_v2_1_1 riviera/xlconcat_v2_1_1
vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_1  -sv2k12 "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_1  -sv2k12 "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_3  -sv2k12 "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../PL-Interrupts.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_1/sim/design_1_util_vector_logic_0_1.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_2/sim/design_1_util_vector_logic_0_2.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"


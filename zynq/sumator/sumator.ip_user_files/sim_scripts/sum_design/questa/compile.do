vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_4
vlib questa_lib/msim/processing_system7_vip_v1_0_6
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/fifo_generator_v13_2_3
vlib questa_lib/msim/axi_data_fifo_v2_1_17
vlib questa_lib/msim/axi_register_slice_v2_1_18
vlib questa_lib/msim/axi_protocol_converter_v2_1_18

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 questa_lib/msim/axi_vip_v1_1_4
vmap processing_system7_vip_v1_0_6 questa_lib/msim/processing_system7_vip_v1_0_6
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_3 questa_lib/msim/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 questa_lib/msim/axi_data_fifo_v2_1_17
vmap axi_register_slice_v2_1_18 questa_lib/msim/axi_register_slice_v2_1_18
vmap axi_protocol_converter_v2_1_18 questa_lib/msim/axi_protocol_converter_v2_1_18

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/ec67/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/70cf/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ip/sum_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/ec67/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/70cf/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ip/sum_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4 -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/ec67/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/70cf/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ip/sum_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_6 -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/ec67/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/70cf/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ip/sum_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/ec67/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/70cf/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ip/sum_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/sum_design/ip/sum_design_processing_system7_0_0/sim/sum_design_processing_system7_0_0.v" \
"../../../bd/sum_design/ipshared/ffa9/hdl/sum_ip_v1_0_S00_AXI.v" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/ec67/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/70cf/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ip/sum_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/sum_design/ipshared/ffa9/hdl/sumator.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/ec67/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/70cf/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ip/sum_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/sum_design/ipshared/ffa9/hdl/sum_ip_v1_0.v" \
"../../../bd/sum_design/ip/sum_design_sum_ip_0_0/sim/sum_design_sum_ip_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/sum_design/ip/sum_design_rst_ps7_0_50M_0/sim/sum_design_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/ec67/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/70cf/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ip/sum_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/sum_design/sim/sum_design.v" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/ec67/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/70cf/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ip/sum_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3 -64 "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/ec67/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/70cf/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ip/sum_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -64 -93 \
"../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/ec67/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/70cf/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ip/sum_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17 -64 "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/ec67/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/70cf/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ip/sum_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18 -64 "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/ec67/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/70cf/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ip/sum_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_18 -64 "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/ec67/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/70cf/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ip/sum_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/ec67/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ipshared/70cf/hdl" "+incdir+../../../../sumator.srcs/sources_1/bd/sum_design/ip/sum_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/sum_design/ip/sum_design_auto_pc_0/sim/sum_design_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"


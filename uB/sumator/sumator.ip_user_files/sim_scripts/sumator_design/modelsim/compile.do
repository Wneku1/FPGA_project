vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/microblaze_v11_0_0
vlib modelsim_lib/msim/lmb_v10_v3_0_9
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_15
vlib modelsim_lib/msim/blk_mem_gen_v8_4_2
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/mdm_v3_2_15
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap microblaze_v11_0_0 modelsim_lib/msim/microblaze_v11_0_0
vmap lmb_v10_v3_0_9 modelsim_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_15 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_15
vmap blk_mem_gen_v8_4_2 modelsim_lib/msim/blk_mem_gen_v8_4_2
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_15 modelsim_lib/msim/mdm_v3_2_15
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/85a3" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_0 -64 -93 \
"../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/sumator_design/ip/sumator_design_microblaze_0_0/sim/sumator_design_microblaze_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/85a3" \
"../../../bd/sumator_design/ipshared/efb9/hdl/sum_ip_v1_0_S00_AXI.v" \

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/85a3" \
"../../../bd/sumator_design/ipshared/efb9/hdl/sumator.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/85a3" \
"../../../bd/sumator_design/ipshared/efb9/hdl/sum_ip_v1_0.v" \
"../../../bd/sumator_design/ip/sumator_design_sum_ip_0_0/sim/sumator_design_sum_ip_0_0.v" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/sumator_design/ip/sumator_design_dlmb_v10_0/sim/sumator_design_dlmb_v10_0.vhd" \
"../../../bd/sumator_design/ip/sumator_design_ilmb_v10_0/sim/sumator_design_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_15 -64 -93 \
"../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/sumator_design/ip/sumator_design_dlmb_bram_if_cntlr_0/sim/sumator_design_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/sumator_design/ip/sumator_design_ilmb_bram_if_cntlr_0/sim/sumator_design_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_2 -64 -incr "+incdir+../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/85a3" \
"../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/85a3" \
"../../../bd/sumator_design/ip/sumator_design_lmb_bram_0/sim/sumator_design_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_15 -64 -93 \
"../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/sumator_design/ip/sumator_design_mdm_1_0/sim/sumator_design_mdm_1_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/85a3" \
"../../../bd/sumator_design/ip/sumator_design_clk_wiz_1_0/sumator_design_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/sumator_design/ip/sumator_design_clk_wiz_1_0/sumator_design_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/sumator_design/ip/sumator_design_rst_clk_wiz_1_100M_0/sim/sumator_design_rst_clk_wiz_1_100M_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/85a3" \
"../../../bd/sumator_design/sim/sumator_design.v" \

vlog -work xil_defaultlib \
"glbl.v"


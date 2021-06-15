vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/microblaze_v11_0_0
vlib riviera/lmb_v10_v3_0_9
vlib riviera/lmb_bram_if_cntlr_v4_0_15
vlib riviera/blk_mem_gen_v8_4_2
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/mdm_v3_2_15
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap microblaze_v11_0_0 riviera/microblaze_v11_0_0
vmap lmb_v10_v3_0_9 riviera/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_15 riviera/lmb_bram_if_cntlr_v4_0_15
vmap blk_mem_gen_v8_4_2 riviera/blk_mem_gen_v8_4_2
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_15 riviera/mdm_v3_2_15
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/85a3" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_0 -93 \
"../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/sumator_design/ip/sumator_design_microblaze_0_0/sim/sumator_design_microblaze_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/85a3" \
"../../../bd/sumator_design/ipshared/efb9/hdl/sum_ip_v1_0_S00_AXI.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/85a3" \
"../../../bd/sumator_design/ipshared/efb9/hdl/sumator.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/85a3" \
"../../../bd/sumator_design/ipshared/efb9/hdl/sum_ip_v1_0.v" \
"../../../bd/sumator_design/ip/sumator_design_sum_ip_0_0/sim/sumator_design_sum_ip_0_0.v" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/sumator_design/ip/sumator_design_dlmb_v10_0/sim/sumator_design_dlmb_v10_0.vhd" \
"../../../bd/sumator_design/ip/sumator_design_ilmb_v10_0/sim/sumator_design_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_15 -93 \
"../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/sumator_design/ip/sumator_design_dlmb_bram_if_cntlr_0/sim/sumator_design_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/sumator_design/ip/sumator_design_ilmb_bram_if_cntlr_0/sim/sumator_design_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_2  -v2k5 "+incdir+../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/85a3" \
"../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/85a3" \
"../../../bd/sumator_design/ip/sumator_design_lmb_bram_0/sim/sumator_design_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_15 -93 \
"../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/sumator_design/ip/sumator_design_mdm_1_0/sim/sumator_design_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/85a3" \
"../../../bd/sumator_design/ip/sumator_design_clk_wiz_1_0/sumator_design_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/sumator_design/ip/sumator_design_clk_wiz_1_0/sumator_design_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/sumator_design/ip/sumator_design_rst_clk_wiz_1_100M_0/sim/sumator_design_rst_clk_wiz_1_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/85a3" \
"../../../bd/sumator_design/sim/sumator_design.v" \

vlog -work xil_defaultlib \
"glbl.v"


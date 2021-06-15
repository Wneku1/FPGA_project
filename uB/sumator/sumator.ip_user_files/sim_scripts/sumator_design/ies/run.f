-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/microblaze_v11_0_0 \
  "../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/sumator_design/ip/sumator_design_microblaze_0_0/sim/sumator_design_microblaze_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/sumator_design/ipshared/efb9/hdl/sum_ip_v1_0_S00_AXI.v" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/sumator_design/ipshared/efb9/hdl/sumator.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/sumator_design/ipshared/efb9/hdl/sum_ip_v1_0.v" \
  "../../../bd/sumator_design/ip/sumator_design_sum_ip_0_0/sim/sumator_design_sum_ip_0_0.v" \
-endlib
-makelib ies_lib/lmb_v10_v3_0_9 \
  "../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/sumator_design/ip/sumator_design_dlmb_v10_0/sim/sumator_design_dlmb_v10_0.vhd" \
  "../../../bd/sumator_design/ip/sumator_design_ilmb_v10_0/sim/sumator_design_ilmb_v10_0.vhd" \
-endlib
-makelib ies_lib/lmb_bram_if_cntlr_v4_0_15 \
  "../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/sumator_design/ip/sumator_design_dlmb_bram_if_cntlr_0/sim/sumator_design_dlmb_bram_if_cntlr_0.vhd" \
  "../../../bd/sumator_design/ip/sumator_design_ilmb_bram_if_cntlr_0/sim/sumator_design_ilmb_bram_if_cntlr_0.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_2 \
  "../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/sumator_design/ip/sumator_design_lmb_bram_0/sim/sumator_design_lmb_bram_0.v" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/mdm_v3_2_15 \
  "../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/sumator_design/ip/sumator_design_mdm_1_0/sim/sumator_design_mdm_1_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/sumator_design/ip/sumator_design_clk_wiz_1_0/sumator_design_clk_wiz_1_0_clk_wiz.v" \
  "../../../bd/sumator_design/ip/sumator_design_clk_wiz_1_0/sumator_design_clk_wiz_1_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../sumator.srcs/sources_1/bd/sumator_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/sumator_design/ip/sumator_design_rst_clk_wiz_1_100M_0/sim/sumator_design_rst_clk_wiz_1_100M_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/sumator_design/sim/sumator_design.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib


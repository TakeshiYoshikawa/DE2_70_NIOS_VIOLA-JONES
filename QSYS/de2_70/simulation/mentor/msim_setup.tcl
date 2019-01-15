
# (C) 2001-2019 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 13.0sp1 232 win32 2019.01.15.11:01:04

# ----------------------------------------
# Auto-generated simulation script

# ----------------------------------------
# Initialize the variable
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
} 

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "de2_70"
} 

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
} 

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "C:/altera/13.0sp1/quartus/"
} 


# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/de2_70_nios2_processor_bht_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/de2_70_nios2_processor_bht_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/de2_70_nios2_processor_bht_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/de2_70_nios2_processor_dc_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/de2_70_nios2_processor_dc_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/de2_70_nios2_processor_dc_tag_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/de2_70_nios2_processor_ic_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/de2_70_nios2_processor_ic_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/de2_70_nios2_processor_ic_tag_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/de2_70_nios2_processor_ociram_default_contents.dat ./
  file copy -force $QSYS_SIMDIR/submodules/de2_70_nios2_processor_ociram_default_contents.hex ./
  file copy -force $QSYS_SIMDIR/submodules/de2_70_nios2_processor_ociram_default_contents.mif ./
  file copy -force $QSYS_SIMDIR/submodules/de2_70_nios2_processor_rf_ram_a.dat ./
  file copy -force $QSYS_SIMDIR/submodules/de2_70_nios2_processor_rf_ram_a.hex ./
  file copy -force $QSYS_SIMDIR/submodules/de2_70_nios2_processor_rf_ram_a.mif ./
  file copy -force $QSYS_SIMDIR/submodules/de2_70_nios2_processor_rf_ram_b.dat ./
  file copy -force $QSYS_SIMDIR/submodules/de2_70_nios2_processor_rf_ram_b.hex ./
  file copy -force $QSYS_SIMDIR/submodules/de2_70_nios2_processor_rf_ram_b.mif ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if { ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] } {
  ensure_lib                  ./libraries/altera_ver/      
  vmap       altera_ver       ./libraries/altera_ver/      
  ensure_lib                  ./libraries/lpm_ver/         
  vmap       lpm_ver          ./libraries/lpm_ver/         
  ensure_lib                  ./libraries/sgate_ver/       
  vmap       sgate_ver        ./libraries/sgate_ver/       
  ensure_lib                  ./libraries/altera_mf_ver/   
  vmap       altera_mf_ver    ./libraries/altera_mf_ver/   
  ensure_lib                  ./libraries/altera_lnsim_ver/
  vmap       altera_lnsim_ver ./libraries/altera_lnsim_ver/
  ensure_lib                  ./libraries/cycloneii_ver/   
  vmap       cycloneii_ver    ./libraries/cycloneii_ver/   
  ensure_lib                  ./libraries/altera/          
  vmap       altera           ./libraries/altera/          
  ensure_lib                  ./libraries/lpm/             
  vmap       lpm              ./libraries/lpm/             
  ensure_lib                  ./libraries/sgate/           
  vmap       sgate            ./libraries/sgate/           
  ensure_lib                  ./libraries/altera_mf/       
  vmap       altera_mf        ./libraries/altera_mf/       
  ensure_lib                  ./libraries/altera_lnsim/    
  vmap       altera_lnsim     ./libraries/altera_lnsim/    
  ensure_lib                  ./libraries/cycloneii/       
  vmap       cycloneii        ./libraries/cycloneii/       
}
ensure_lib                                                                                      ./libraries/irq_mapper/                                                                          
vmap       irq_mapper                                                                           ./libraries/irq_mapper/                                                                          
ensure_lib                                                                                      ./libraries/width_adapter/                                                                       
vmap       width_adapter                                                                        ./libraries/width_adapter/                                                                       
ensure_lib                                                                                      ./libraries/rsp_xbar_mux_002/                                                                    
vmap       rsp_xbar_mux_002                                                                     ./libraries/rsp_xbar_mux_002/                                                                    
ensure_lib                                                                                      ./libraries/rsp_xbar_mux_001/                                                                    
vmap       rsp_xbar_mux_001                                                                     ./libraries/rsp_xbar_mux_001/                                                                    
ensure_lib                                                                                      ./libraries/rsp_xbar_mux/                                                                        
vmap       rsp_xbar_mux                                                                         ./libraries/rsp_xbar_mux/                                                                        
ensure_lib                                                                                      ./libraries/rsp_xbar_demux_003/                                                                  
vmap       rsp_xbar_demux_003                                                                   ./libraries/rsp_xbar_demux_003/                                                                  
ensure_lib                                                                                      ./libraries/rsp_xbar_demux_002/                                                                  
vmap       rsp_xbar_demux_002                                                                   ./libraries/rsp_xbar_demux_002/                                                                  
ensure_lib                                                                                      ./libraries/rsp_xbar_demux_001/                                                                  
vmap       rsp_xbar_demux_001                                                                   ./libraries/rsp_xbar_demux_001/                                                                  
ensure_lib                                                                                      ./libraries/rsp_xbar_demux/                                                                      
vmap       rsp_xbar_demux                                                                       ./libraries/rsp_xbar_demux/                                                                      
ensure_lib                                                                                      ./libraries/cmd_xbar_mux_003/                                                                    
vmap       cmd_xbar_mux_003                                                                     ./libraries/cmd_xbar_mux_003/                                                                    
ensure_lib                                                                                      ./libraries/cmd_xbar_mux_001/                                                                    
vmap       cmd_xbar_mux_001                                                                     ./libraries/cmd_xbar_mux_001/                                                                    
ensure_lib                                                                                      ./libraries/cmd_xbar_mux/                                                                        
vmap       cmd_xbar_mux                                                                         ./libraries/cmd_xbar_mux/                                                                        
ensure_lib                                                                                      ./libraries/cmd_xbar_demux_003/                                                                  
vmap       cmd_xbar_demux_003                                                                   ./libraries/cmd_xbar_demux_003/                                                                  
ensure_lib                                                                                      ./libraries/cmd_xbar_demux_002/                                                                  
vmap       cmd_xbar_demux_002                                                                   ./libraries/cmd_xbar_demux_002/                                                                  
ensure_lib                                                                                      ./libraries/cmd_xbar_demux_001/                                                                  
vmap       cmd_xbar_demux_001                                                                   ./libraries/cmd_xbar_demux_001/                                                                  
ensure_lib                                                                                      ./libraries/cmd_xbar_demux/                                                                      
vmap       cmd_xbar_demux                                                                       ./libraries/cmd_xbar_demux/                                                                      
ensure_lib                                                                                      ./libraries/rst_controller/                                                                      
vmap       rst_controller                                                                       ./libraries/rst_controller/                                                                      
ensure_lib                                                                                      ./libraries/burst_adapter/                                                                       
vmap       burst_adapter                                                                        ./libraries/burst_adapter/                                                                       
ensure_lib                                                                                      ./libraries/limiter/                                                                             
vmap       limiter                                                                              ./libraries/limiter/                                                                             
ensure_lib                                                                                      ./libraries/id_router_003/                                                                       
vmap       id_router_003                                                                        ./libraries/id_router_003/                                                                       
ensure_lib                                                                                      ./libraries/id_router_002/                                                                       
vmap       id_router_002                                                                        ./libraries/id_router_002/                                                                       
ensure_lib                                                                                      ./libraries/id_router_001/                                                                       
vmap       id_router_001                                                                        ./libraries/id_router_001/                                                                       
ensure_lib                                                                                      ./libraries/id_router/                                                                           
vmap       id_router                                                                            ./libraries/id_router/                                                                           
ensure_lib                                                                                      ./libraries/addr_router_002/                                                                     
vmap       addr_router_002                                                                      ./libraries/addr_router_002/                                                                     
ensure_lib                                                                                      ./libraries/addr_router_001/                                                                     
vmap       addr_router_001                                                                      ./libraries/addr_router_001/                                                                     
ensure_lib                                                                                      ./libraries/addr_router/                                                                         
vmap       addr_router                                                                          ./libraries/addr_router/                                                                         
ensure_lib                                                                                      ./libraries/Pixel_Buffer_avalon_ssram_slave_translator_avalon_universal_slave_0_agent_rsp_fifo/  
vmap       Pixel_Buffer_avalon_ssram_slave_translator_avalon_universal_slave_0_agent_rsp_fifo   ./libraries/Pixel_Buffer_avalon_ssram_slave_translator_avalon_universal_slave_0_agent_rsp_fifo/  
ensure_lib                                                                                      ./libraries/sdram_s1_translator_avalon_universal_slave_0_agent_rdata_fifo/                       
vmap       sdram_s1_translator_avalon_universal_slave_0_agent_rdata_fifo                        ./libraries/sdram_s1_translator_avalon_universal_slave_0_agent_rdata_fifo/                       
ensure_lib                                                                                      ./libraries/sdram_s1_translator_avalon_universal_slave_0_agent_rsp_fifo/                         
vmap       sdram_s1_translator_avalon_universal_slave_0_agent_rsp_fifo                          ./libraries/sdram_s1_translator_avalon_universal_slave_0_agent_rsp_fifo/                         
ensure_lib                                                                                      ./libraries/nios2_processor_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo/
vmap       nios2_processor_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo ./libraries/nios2_processor_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo/
ensure_lib                                                                                      ./libraries/nios2_processor_jtag_debug_module_translator_avalon_universal_slave_0_agent/         
vmap       nios2_processor_jtag_debug_module_translator_avalon_universal_slave_0_agent          ./libraries/nios2_processor_jtag_debug_module_translator_avalon_universal_slave_0_agent/         
ensure_lib                                                                                      ./libraries/nios2_processor_instruction_master_translator_avalon_universal_master_0_agent/       
vmap       nios2_processor_instruction_master_translator_avalon_universal_master_0_agent        ./libraries/nios2_processor_instruction_master_translator_avalon_universal_master_0_agent/       
ensure_lib                                                                                      ./libraries/nios2_processor_jtag_debug_module_translator/                                        
vmap       nios2_processor_jtag_debug_module_translator                                         ./libraries/nios2_processor_jtag_debug_module_translator/                                        
ensure_lib                                                                                      ./libraries/nios2_processor_instruction_master_translator/                                       
vmap       nios2_processor_instruction_master_translator                                        ./libraries/nios2_processor_instruction_master_translator/                                       
ensure_lib                                                                                      ./libraries/Video_DMA/                                                                           
vmap       Video_DMA                                                                            ./libraries/Video_DMA/                                                                           
ensure_lib                                                                                      ./libraries/Video_RGB_Resampler_0/                                                               
vmap       Video_RGB_Resampler_0                                                                ./libraries/Video_RGB_Resampler_0/                                                               
ensure_lib                                                                                      ./libraries/Video_Scaler_0/                                                                      
vmap       Video_Scaler_0                                                                       ./libraries/Video_Scaler_0/                                                                      
ensure_lib                                                                                      ./libraries/Video_Clipper/                                                                       
vmap       Video_Clipper                                                                        ./libraries/Video_Clipper/                                                                       
ensure_lib                                                                                      ./libraries/Video_Bayer_Pattern_Resampler/                                                       
vmap       Video_Bayer_Pattern_Resampler                                                        ./libraries/Video_Bayer_Pattern_Resampler/                                                       
ensure_lib                                                                                      ./libraries/Video_In_Decoder/                                                                    
vmap       Video_In_Decoder                                                                     ./libraries/Video_In_Decoder/                                                                    
ensure_lib                                                                                      ./libraries/AV_Config/                                                                           
vmap       AV_Config                                                                            ./libraries/AV_Config/                                                                           
ensure_lib                                                                                      ./libraries/sysid_qsys/                                                                          
vmap       sysid_qsys                                                                           ./libraries/sysid_qsys/                                                                          
ensure_lib                                                                                      ./libraries/jtag_uart/                                                                           
vmap       jtag_uart                                                                            ./libraries/jtag_uart/                                                                           
ensure_lib                                                                                      ./libraries/timer/                                                                               
vmap       timer                                                                                ./libraries/timer/                                                                               
ensure_lib                                                                                      ./libraries/sdram/                                                                               
vmap       sdram                                                                                ./libraries/sdram/                                                                               
ensure_lib                                                                                      ./libraries/Pixel_Buffer/                                                                        
vmap       Pixel_Buffer                                                                         ./libraries/Pixel_Buffer/                                                                        
ensure_lib                                                                                      ./libraries/Video_Scaler_1/                                                                      
vmap       Video_Scaler_1                                                                       ./libraries/Video_Scaler_1/                                                                      
ensure_lib                                                                                      ./libraries/VGA_Controller/                                                                      
vmap       VGA_Controller                                                                       ./libraries/VGA_Controller/                                                                      
ensure_lib                                                                                      ./libraries/Video_RGB_Resampler_1/                                                               
vmap       Video_RGB_Resampler_1                                                                ./libraries/Video_RGB_Resampler_1/                                                               
ensure_lib                                                                                      ./libraries/Pixel_Buffer_DMA/                                                                    
vmap       Pixel_Buffer_DMA                                                                     ./libraries/Pixel_Buffer_DMA/                                                                    
ensure_lib                                                                                      ./libraries/Dual_Clock_FIFO/                                                                     
vmap       Dual_Clock_FIFO                                                                      ./libraries/Dual_Clock_FIFO/                                                                     
ensure_lib                                                                                      ./libraries/nios2_processor/                                                                     
vmap       nios2_processor                                                                      ./libraries/nios2_processor/                                                                     
ensure_lib                                                                                      ./libraries/Clock_Signals/                                                                       
vmap       Clock_Signals                                                                        ./libraries/Clock_Signals/                                                                       

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if { ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] } {
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"              -work altera_ver      
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                       -work lpm_ver         
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                          -work sgate_ver       
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                      -work altera_mf_ver   
    vlog -sv "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv"  -work altera_lnsim_ver
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneii_atoms.v"                -work cycloneii_ver   
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"        -work altera          
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"    -work altera          
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"       -work altera          
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"    -work altera          
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd" -work altera          
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"            -work altera          
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                      -work lpm             
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                     -work lpm             
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                   -work sgate           
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                        -work sgate           
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"         -work altera_mf       
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                    -work altera_mf       
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"      -work altera_lnsim    
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneii_atoms.vhd"              -work cycloneii       
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneii_components.vhd"         -work cycloneii       
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vcom     "$QSYS_SIMDIR/submodules/de2_70_irq_mapper.vho"                                                                           -work irq_mapper                                                                          
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_width_adapter.sv"                                                           -work width_adapter                                                                       
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_address_alignment.sv"                                                       -work width_adapter                                                                       
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_burst_uncompressor.sv"                                                      -work width_adapter                                                                       
  vcom     "$QSYS_SIMDIR/submodules/de2_70_rsp_xbar_mux_002.vho"                                                                     -work rsp_xbar_mux_002                                                                    
  vcom     "$QSYS_SIMDIR/submodules/de2_70_rsp_xbar_mux_001.vho"                                                                     -work rsp_xbar_mux_001                                                                    
  vcom     "$QSYS_SIMDIR/submodules/de2_70_rsp_xbar_mux.vho"                                                                         -work rsp_xbar_mux                                                                        
  vcom     "$QSYS_SIMDIR/submodules/de2_70_rsp_xbar_demux_003.vho"                                                                   -work rsp_xbar_demux_003                                                                  
  vcom     "$QSYS_SIMDIR/submodules/de2_70_rsp_xbar_demux_002.vho"                                                                   -work rsp_xbar_demux_002                                                                  
  vcom     "$QSYS_SIMDIR/submodules/de2_70_rsp_xbar_demux_001.vho"                                                                   -work rsp_xbar_demux_001                                                                  
  vcom     "$QSYS_SIMDIR/submodules/de2_70_rsp_xbar_demux.vho"                                                                       -work rsp_xbar_demux                                                                      
  vcom     "$QSYS_SIMDIR/submodules/de2_70_cmd_xbar_mux_003.vho"                                                                     -work cmd_xbar_mux_003                                                                    
  vcom     "$QSYS_SIMDIR/submodules/de2_70_cmd_xbar_mux_001.vho"                                                                     -work cmd_xbar_mux_001                                                                    
  vcom     "$QSYS_SIMDIR/submodules/de2_70_cmd_xbar_mux.vho"                                                                         -work cmd_xbar_mux                                                                        
  vcom     "$QSYS_SIMDIR/submodules/de2_70_cmd_xbar_demux_003.vho"                                                                   -work cmd_xbar_demux_003                                                                  
  vcom     "$QSYS_SIMDIR/submodules/de2_70_cmd_xbar_demux_002.vho"                                                                   -work cmd_xbar_demux_002                                                                  
  vcom     "$QSYS_SIMDIR/submodules/de2_70_cmd_xbar_demux_001.vho"                                                                   -work cmd_xbar_demux_001                                                                  
  vcom     "$QSYS_SIMDIR/submodules/de2_70_cmd_xbar_demux.vho"                                                                       -work cmd_xbar_demux                                                                      
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_reset_controller.v"                                                                -work rst_controller                                                                      
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_reset_synchronizer.v"                                                              -work rst_controller                                                                      
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_burst_adapter.sv"                                                           -work burst_adapter                                                                       
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_address_alignment.sv"                                                       -work burst_adapter                                                                       
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_traffic_limiter.sv"                                                         -work limiter                                                                             
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_avalon_st_pipeline_base.v"                                                         -work limiter                                                                             
  vcom     "$QSYS_SIMDIR/submodules/de2_70_id_router_003.vho"                                                                        -work id_router_003                                                                       
  vcom     "$QSYS_SIMDIR/submodules/de2_70_id_router_002.vho"                                                                        -work id_router_002                                                                       
  vcom     "$QSYS_SIMDIR/submodules/de2_70_id_router_001.vho"                                                                        -work id_router_001                                                                       
  vcom     "$QSYS_SIMDIR/submodules/de2_70_id_router.vho"                                                                            -work id_router                                                                           
  vcom     "$QSYS_SIMDIR/submodules/de2_70_addr_router_002.vho"                                                                      -work addr_router_002                                                                     
  vcom     "$QSYS_SIMDIR/submodules/de2_70_addr_router_001.vho"                                                                      -work addr_router_001                                                                     
  vcom     "$QSYS_SIMDIR/submodules/de2_70_addr_router.vho"                                                                          -work addr_router                                                                         
  vcom     "$QSYS_SIMDIR/submodules/de2_70_Pixel_Buffer_avalon_ssram_slave_translator_avalon_universal_slave_0_agent_rsp_fifo.vho"   -work Pixel_Buffer_avalon_ssram_slave_translator_avalon_universal_slave_0_agent_rsp_fifo  
  vcom     "$QSYS_SIMDIR/submodules/de2_70_sdram_s1_translator_avalon_universal_slave_0_agent_rdata_fifo.vho"                        -work sdram_s1_translator_avalon_universal_slave_0_agent_rdata_fifo                       
  vcom     "$QSYS_SIMDIR/submodules/de2_70_sdram_s1_translator_avalon_universal_slave_0_agent_rsp_fifo.vho"                          -work sdram_s1_translator_avalon_universal_slave_0_agent_rsp_fifo                         
  vcom     "$QSYS_SIMDIR/submodules/de2_70_nios2_processor_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo.vho" -work nios2_processor_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_slave_agent.sv"                                                             -work nios2_processor_jtag_debug_module_translator_avalon_universal_slave_0_agent         
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_burst_uncompressor.sv"                                                      -work nios2_processor_jtag_debug_module_translator_avalon_universal_slave_0_agent         
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_master_agent.sv"                                                            -work nios2_processor_instruction_master_translator_avalon_universal_master_0_agent       
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_slave_translator.sv"                                                        -work nios2_processor_jtag_debug_module_translator                                        
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_master_translator.sv"                                                       -work nios2_processor_instruction_master_translator                                       
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_control_slave.v"                                                             -work Video_DMA                                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_to_memory.v"                                                                 -work Video_DMA                                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_to_stream.v"                                                                 -work Video_DMA                                                                           
  vcom     "$QSYS_SIMDIR/submodules/de2_70_Video_DMA.vhd"                                                                            -work Video_DMA                                                                           
  vcom     "$QSYS_SIMDIR/submodules/de2_70_Video_RGB_Resampler_0.vhd"                                                                -work Video_RGB_Resampler_0                                                               
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_shrink.v"                                                                 -work Video_Scaler_0                                                                      
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_width.v"                                                         -work Video_Scaler_0                                                                      
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_height.v"                                                        -work Video_Scaler_0                                                                      
  vcom     "$QSYS_SIMDIR/submodules/de2_70_Video_Scaler_0.vhd"                                                                       -work Video_Scaler_0                                                                      
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_clipper_add.v"                                                                   -work Video_Clipper                                                                       
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_clipper_drop.v"                                                                  -work Video_Clipper                                                                       
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_clipper_counters.v"                                                              -work Video_Clipper                                                                       
  vcom     "$QSYS_SIMDIR/submodules/de2_70_Video_Clipper.vhd"                                                                        -work Video_Clipper                                                                       
  vcom     "$QSYS_SIMDIR/submodules/de2_70_Video_Bayer_Pattern_Resampler.vhd"                                                        -work Video_Bayer_Pattern_Resampler                                                       
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_itu_656_decoder.v"                                                               -work Video_In_Decoder                                                                    
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_decoder_add_endofpacket.v"                                                       -work Video_In_Decoder                                                                    
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_camera_decoder.v"                                                                -work Video_In_Decoder                                                                    
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_dual_clock_fifo.v"                                                               -work Video_In_Decoder                                                                    
  vcom     "$QSYS_SIMDIR/submodules/de2_70_Video_In_Decoder.vhd"                                                                     -work Video_In_Decoder                                                                    
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_serial_bus_controller.v"                                                     -work AV_Config                                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_slow_clock_generator.v"                                                                -work AV_Config                                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init.v"                                                                 -work AV_Config                                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_dc2.v"                                                             -work AV_Config                                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_d5m.v"                                                             -work AV_Config                                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_lcm.v"                                                             -work AV_Config                                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ltm.v"                                                             -work AV_Config                                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_35.v"                                                       -work AV_Config                                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_adv7181.v"                                                      -work AV_Config                                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_70.v"                                                       -work AV_Config                                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_115.v"                                                      -work AV_Config                                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_audio.v"                                                        -work AV_Config                                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_adv7180.v"                                                      -work AV_Config                                                                           
  vcom     "$QSYS_SIMDIR/submodules/de2_70_AV_Config.vhd"                                                                            -work AV_Config                                                                           
  vcom     "$QSYS_SIMDIR/submodules/de2_70_sysid_qsys.vho"                                                                           -work sysid_qsys                                                                          
  vcom     "$QSYS_SIMDIR/submodules/de2_70_jtag_uart.vhd"                                                                            -work jtag_uart                                                                           
  vcom     "$QSYS_SIMDIR/submodules/de2_70_timer.vhd"                                                                                -work timer                                                                               
  vcom     "$QSYS_SIMDIR/submodules/de2_70_sdram.vhd"                                                                                -work sdram                                                                               
  vcom     "$QSYS_SIMDIR/submodules/de2_70_Pixel_Buffer.vhd"                                                                         -work Pixel_Buffer                                                                        
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_shrink.v"                                                                 -work Video_Scaler_1                                                                      
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_width.v"                                                         -work Video_Scaler_1                                                                      
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_height.v"                                                        -work Video_Scaler_1                                                                      
  vcom     "$QSYS_SIMDIR/submodules/de2_70_Video_Scaler_1.vhd"                                                                       -work Video_Scaler_1                                                                      
  vlog     "$QSYS_SIMDIR/submodules/altera_up_avalon_video_vga_timing.v"                                                             -work VGA_Controller                                                                      
  vcom     "$QSYS_SIMDIR/submodules/de2_70_VGA_Controller.vhd"                                                                       -work VGA_Controller                                                                      
  vcom     "$QSYS_SIMDIR/submodules/de2_70_Video_RGB_Resampler_1.vhd"                                                                -work Video_RGB_Resampler_1                                                               
  vcom     "$QSYS_SIMDIR/submodules/de2_70_Pixel_Buffer_DMA.vhd"                                                                     -work Pixel_Buffer_DMA                                                                    
  vcom     "$QSYS_SIMDIR/submodules/de2_70_Dual_Clock_FIFO.vhd"                                                                      -work Dual_Clock_FIFO                                                                     
  vcom     "$QSYS_SIMDIR/submodules/de2_70_nios2_processor.vho"                                                                      -work nios2_processor                                                                     
  vcom     "$QSYS_SIMDIR/submodules/de2_70_nios2_processor_jtag_debug_module_sysclk.vhd"                                             -work nios2_processor                                                                     
  vcom     "$QSYS_SIMDIR/submodules/de2_70_nios2_processor_jtag_debug_module_tck.vhd"                                                -work nios2_processor                                                                     
  vcom     "$QSYS_SIMDIR/submodules/de2_70_nios2_processor_jtag_debug_module_wrapper.vhd"                                            -work nios2_processor                                                                     
  vcom     "$QSYS_SIMDIR/submodules/de2_70_nios2_processor_mult_cell.vhd"                                                            -work nios2_processor                                                                     
  vcom     "$QSYS_SIMDIR/submodules/de2_70_nios2_processor_oci_test_bench.vhd"                                                       -work nios2_processor                                                                     
  vcom     "$QSYS_SIMDIR/submodules/de2_70_nios2_processor_test_bench.vhd"                                                           -work nios2_processor                                                                     
  vcom     "$QSYS_SIMDIR/submodules/de2_70_Clock_Signals.vhd"                                                                        -work Clock_Signals                                                                       
  vcom     "$QSYS_SIMDIR/de2_70.vhd"                                                                                                                                                                                           
  vcom     "$QSYS_SIMDIR/de2_70_limiter.vhd"                                                                                                                                                                                   
  vcom     "$QSYS_SIMDIR/de2_70_limiter_002.vhd"                                                                                                                                                                               
  vcom     "$QSYS_SIMDIR/de2_70_width_adapter.vhd"                                                                                                                                                                             
  vcom     "$QSYS_SIMDIR/de2_70_width_adapter_002.vhd"                                                                                                                                                                         
  vcom     "$QSYS_SIMDIR/de2_70_width_adapter_003.vhd"                                                                                                                                                                         
  vcom     "$QSYS_SIMDIR/de2_70_width_adapter_006.vhd"                                                                                                                                                                         
  vcom     "$QSYS_SIMDIR/de2_70_width_adapter_008.vhd"                                                                                                                                                                         
  vcom     "$QSYS_SIMDIR/de2_70_width_adapter_010.vhd"                                                                                                                                                                         
  vcom     "$QSYS_SIMDIR/de2_70_nios2_processor_jtag_debug_module_translator_avalon_universal_slave_0_agent.vhd"                                                                                                               
  vcom     "$QSYS_SIMDIR/de2_70_sdram_s1_translator_avalon_universal_slave_0_agent.vhd"                                                                                                                                        
  vcom     "$QSYS_SIMDIR/de2_70_nios2_processor_instruction_master_translator.vhd"                                                                                                                                             
  vcom     "$QSYS_SIMDIR/de2_70_nios2_processor_data_master_translator.vhd"                                                                                                                                                    
  vcom     "$QSYS_SIMDIR/de2_70_pixel_buffer_dma_avalon_pixel_dma_master_translator.vhd"                                                                                                                                       
  vcom     "$QSYS_SIMDIR/de2_70_video_dma_avalon_dma_master_translator.vhd"                                                                                                                                                    
  vcom     "$QSYS_SIMDIR/de2_70_nios2_processor_jtag_debug_module_translator.vhd"                                                                                                                                              
  vcom     "$QSYS_SIMDIR/de2_70_sdram_s1_translator.vhd"                                                                                                                                                                       
  vcom     "$QSYS_SIMDIR/de2_70_pixel_buffer_dma_avalon_control_slave_translator.vhd"                                                                                                                                          
  vcom     "$QSYS_SIMDIR/de2_70_pixel_buffer_avalon_ssram_slave_translator.vhd"                                                                                                                                                
  vcom     "$QSYS_SIMDIR/de2_70_timer_s1_translator.vhd"                                                                                                                                                                       
  vcom     "$QSYS_SIMDIR/de2_70_jtag_uart_avalon_jtag_slave_translator.vhd"                                                                                                                                                    
  vcom     "$QSYS_SIMDIR/de2_70_sysid_qsys_control_slave_translator.vhd"                                                                                                                                                       
  vcom     "$QSYS_SIMDIR/de2_70_nios2_processor_instruction_master_translator_avalon_universal_master_0_agent.vhd"                                                                                                             
  vcom     "$QSYS_SIMDIR/de2_70_pixel_buffer_dma_avalon_pixel_dma_master_translator_avalon_universal_master_0_agent.vhd"                                                                                                       
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  vsim -t ps -L work -L work_lib -L irq_mapper -L width_adapter -L rsp_xbar_mux_002 -L rsp_xbar_mux_001 -L rsp_xbar_mux -L rsp_xbar_demux_003 -L rsp_xbar_demux_002 -L rsp_xbar_demux_001 -L rsp_xbar_demux -L cmd_xbar_mux_003 -L cmd_xbar_mux_001 -L cmd_xbar_mux -L cmd_xbar_demux_003 -L cmd_xbar_demux_002 -L cmd_xbar_demux_001 -L cmd_xbar_demux -L rst_controller -L burst_adapter -L limiter -L id_router_003 -L id_router_002 -L id_router_001 -L id_router -L addr_router_002 -L addr_router_001 -L addr_router -L Pixel_Buffer_avalon_ssram_slave_translator_avalon_universal_slave_0_agent_rsp_fifo -L sdram_s1_translator_avalon_universal_slave_0_agent_rdata_fifo -L sdram_s1_translator_avalon_universal_slave_0_agent_rsp_fifo -L nios2_processor_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo -L nios2_processor_jtag_debug_module_translator_avalon_universal_slave_0_agent -L nios2_processor_instruction_master_translator_avalon_universal_master_0_agent -L nios2_processor_jtag_debug_module_translator -L nios2_processor_instruction_master_translator -L Video_DMA -L Video_RGB_Resampler_0 -L Video_Scaler_0 -L Video_Clipper -L Video_Bayer_Pattern_Resampler -L Video_In_Decoder -L AV_Config -L sysid_qsys -L jtag_uart -L timer -L sdram -L Pixel_Buffer -L Video_Scaler_1 -L VGA_Controller -L Video_RGB_Resampler_1 -L Pixel_Buffer_DMA -L Dual_Clock_FIFO -L nios2_processor -L Clock_Signals -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  vsim -novopt -t ps -L work -L work_lib -L irq_mapper -L width_adapter -L rsp_xbar_mux_002 -L rsp_xbar_mux_001 -L rsp_xbar_mux -L rsp_xbar_demux_003 -L rsp_xbar_demux_002 -L rsp_xbar_demux_001 -L rsp_xbar_demux -L cmd_xbar_mux_003 -L cmd_xbar_mux_001 -L cmd_xbar_mux -L cmd_xbar_demux_003 -L cmd_xbar_demux_002 -L cmd_xbar_demux_001 -L cmd_xbar_demux -L rst_controller -L burst_adapter -L limiter -L id_router_003 -L id_router_002 -L id_router_001 -L id_router -L addr_router_002 -L addr_router_001 -L addr_router -L Pixel_Buffer_avalon_ssram_slave_translator_avalon_universal_slave_0_agent_rsp_fifo -L sdram_s1_translator_avalon_universal_slave_0_agent_rdata_fifo -L sdram_s1_translator_avalon_universal_slave_0_agent_rsp_fifo -L nios2_processor_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo -L nios2_processor_jtag_debug_module_translator_avalon_universal_slave_0_agent -L nios2_processor_instruction_master_translator_avalon_universal_master_0_agent -L nios2_processor_jtag_debug_module_translator -L nios2_processor_instruction_master_translator -L Video_DMA -L Video_RGB_Resampler_0 -L Video_Scaler_0 -L Video_Clipper -L Video_Bayer_Pattern_Resampler -L Video_In_Decoder -L AV_Config -L sysid_qsys -L jtag_uart -L timer -L sdram -L Pixel_Buffer -L Video_Scaler_1 -L VGA_Controller -L Video_RGB_Resampler_1 -L Pixel_Buffer_DMA -L Dual_Clock_FIFO -L nios2_processor -L Clock_Signals -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with novopt option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
}
file_copy
h

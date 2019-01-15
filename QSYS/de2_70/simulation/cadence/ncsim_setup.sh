
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

# ACDS 13.0sp1 232 win32 2019.01.15.11:01:05

# ----------------------------------------
# ncsim - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="de2_70"
QSYS_SIMDIR="./../"
QUARTUS_INSTALL_DIR="C:/altera/13.0sp1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/irq_mapper/
mkdir -p ./libraries/rsp_xbar_mux_002/
mkdir -p ./libraries/rsp_xbar_mux_001/
mkdir -p ./libraries/rsp_xbar_mux/
mkdir -p ./libraries/rsp_xbar_demux_003/
mkdir -p ./libraries/rsp_xbar_demux_002/
mkdir -p ./libraries/rsp_xbar_demux_001/
mkdir -p ./libraries/rsp_xbar_demux/
mkdir -p ./libraries/cmd_xbar_mux_003/
mkdir -p ./libraries/cmd_xbar_mux_001/
mkdir -p ./libraries/cmd_xbar_mux/
mkdir -p ./libraries/cmd_xbar_demux_003/
mkdir -p ./libraries/cmd_xbar_demux_002/
mkdir -p ./libraries/cmd_xbar_demux_001/
mkdir -p ./libraries/cmd_xbar_demux/
mkdir -p ./libraries/id_router_003/
mkdir -p ./libraries/id_router_002/
mkdir -p ./libraries/id_router_001/
mkdir -p ./libraries/id_router/
mkdir -p ./libraries/addr_router_002/
mkdir -p ./libraries/addr_router_001/
mkdir -p ./libraries/addr_router/
mkdir -p ./libraries/Pixel_Buffer_avalon_ssram_slave_translator_avalon_universal_slave_0_agent_rsp_fifo/
mkdir -p ./libraries/sdram_s1_translator_avalon_universal_slave_0_agent_rdata_fifo/
mkdir -p ./libraries/sdram_s1_translator_avalon_universal_slave_0_agent_rsp_fifo/
mkdir -p ./libraries/nios2_processor_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo/
mkdir -p ./libraries/Video_DMA/
mkdir -p ./libraries/Video_RGB_Resampler_0/
mkdir -p ./libraries/Video_Scaler_0/
mkdir -p ./libraries/Video_Clipper/
mkdir -p ./libraries/Video_Bayer_Pattern_Resampler/
mkdir -p ./libraries/Video_In_Decoder/
mkdir -p ./libraries/AV_Config/
mkdir -p ./libraries/sysid_qsys/
mkdir -p ./libraries/jtag_uart/
mkdir -p ./libraries/timer/
mkdir -p ./libraries/sdram/
mkdir -p ./libraries/Pixel_Buffer/
mkdir -p ./libraries/Video_Scaler_1/
mkdir -p ./libraries/VGA_Controller/
mkdir -p ./libraries/Video_RGB_Resampler_1/
mkdir -p ./libraries/Pixel_Buffer_DMA/
mkdir -p ./libraries/Dual_Clock_FIFO/
mkdir -p ./libraries/nios2_processor/
mkdir -p ./libraries/Clock_Signals/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/cycloneii_ver/
mkdir -p ./libraries/altera/
mkdir -p ./libraries/lpm/
mkdir -p ./libraries/sgate/
mkdir -p ./libraries/altera_mf/
mkdir -p ./libraries/altera_lnsim/
mkdir -p ./libraries/cycloneii/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/de2_70_nios2_processor_bht_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/de2_70_nios2_processor_bht_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/de2_70_nios2_processor_bht_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/de2_70_nios2_processor_dc_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/de2_70_nios2_processor_dc_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/de2_70_nios2_processor_dc_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/de2_70_nios2_processor_ic_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/de2_70_nios2_processor_ic_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/de2_70_nios2_processor_ic_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/de2_70_nios2_processor_ociram_default_contents.dat ./
  cp -f $QSYS_SIMDIR/submodules/de2_70_nios2_processor_ociram_default_contents.hex ./
  cp -f $QSYS_SIMDIR/submodules/de2_70_nios2_processor_ociram_default_contents.mif ./
  cp -f $QSYS_SIMDIR/submodules/de2_70_nios2_processor_rf_ram_a.dat ./
  cp -f $QSYS_SIMDIR/submodules/de2_70_nios2_processor_rf_ram_a.hex ./
  cp -f $QSYS_SIMDIR/submodules/de2_70_nios2_processor_rf_ram_a.mif ./
  cp -f $QSYS_SIMDIR/submodules/de2_70_nios2_processor_rf_ram_b.dat ./
  cp -f $QSYS_SIMDIR/submodules/de2_70_nios2_processor_rf_ram_b.hex ./
  cp -f $QSYS_SIMDIR/submodules/de2_70_nios2_processor_rf_ram_b.mif ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"              -work altera_ver      
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                       -work lpm_ver         
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                          -work sgate_ver       
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                      -work altera_mf_ver   
  ncvlog -sv  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                  -work altera_lnsim_ver
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneii_atoms.v"                -work cycloneii_ver   
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"        -work altera          
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"    -work altera          
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"       -work altera          
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"    -work altera          
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd" -work altera          
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"            -work altera          
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                      -work lpm             
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                     -work lpm             
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                   -work sgate           
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                        -work sgate           
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"         -work altera_mf       
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                    -work altera_mf       
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"      -work altera_lnsim    
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneii_atoms.vhd"              -work cycloneii       
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneii_components.vhd"         -work cycloneii       
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_irq_mapper.vho"                                                                           -work irq_mapper                                                                           -cdslib ./cds_libs/irq_mapper.cds.lib                                                                          
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_rsp_xbar_mux_002.vho"                                                                     -work rsp_xbar_mux_002                                                                     -cdslib ./cds_libs/rsp_xbar_mux_002.cds.lib                                                                    
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_rsp_xbar_mux_001.vho"                                                                     -work rsp_xbar_mux_001                                                                     -cdslib ./cds_libs/rsp_xbar_mux_001.cds.lib                                                                    
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_rsp_xbar_mux.vho"                                                                         -work rsp_xbar_mux                                                                         -cdslib ./cds_libs/rsp_xbar_mux.cds.lib                                                                        
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_rsp_xbar_demux_003.vho"                                                                   -work rsp_xbar_demux_003                                                                   -cdslib ./cds_libs/rsp_xbar_demux_003.cds.lib                                                                  
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_rsp_xbar_demux_002.vho"                                                                   -work rsp_xbar_demux_002                                                                   -cdslib ./cds_libs/rsp_xbar_demux_002.cds.lib                                                                  
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_rsp_xbar_demux_001.vho"                                                                   -work rsp_xbar_demux_001                                                                   -cdslib ./cds_libs/rsp_xbar_demux_001.cds.lib                                                                  
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_rsp_xbar_demux.vho"                                                                       -work rsp_xbar_demux                                                                       -cdslib ./cds_libs/rsp_xbar_demux.cds.lib                                                                      
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_cmd_xbar_mux_003.vho"                                                                     -work cmd_xbar_mux_003                                                                     -cdslib ./cds_libs/cmd_xbar_mux_003.cds.lib                                                                    
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_cmd_xbar_mux_001.vho"                                                                     -work cmd_xbar_mux_001                                                                     -cdslib ./cds_libs/cmd_xbar_mux_001.cds.lib                                                                    
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_cmd_xbar_mux.vho"                                                                         -work cmd_xbar_mux                                                                         -cdslib ./cds_libs/cmd_xbar_mux.cds.lib                                                                        
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_cmd_xbar_demux_003.vho"                                                                   -work cmd_xbar_demux_003                                                                   -cdslib ./cds_libs/cmd_xbar_demux_003.cds.lib                                                                  
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_cmd_xbar_demux_002.vho"                                                                   -work cmd_xbar_demux_002                                                                   -cdslib ./cds_libs/cmd_xbar_demux_002.cds.lib                                                                  
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_cmd_xbar_demux_001.vho"                                                                   -work cmd_xbar_demux_001                                                                   -cdslib ./cds_libs/cmd_xbar_demux_001.cds.lib                                                                  
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_cmd_xbar_demux.vho"                                                                       -work cmd_xbar_demux                                                                       -cdslib ./cds_libs/cmd_xbar_demux.cds.lib                                                                      
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_id_router_003.vho"                                                                        -work id_router_003                                                                        -cdslib ./cds_libs/id_router_003.cds.lib                                                                       
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_id_router_002.vho"                                                                        -work id_router_002                                                                        -cdslib ./cds_libs/id_router_002.cds.lib                                                                       
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_id_router_001.vho"                                                                        -work id_router_001                                                                        -cdslib ./cds_libs/id_router_001.cds.lib                                                                       
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_id_router.vho"                                                                            -work id_router                                                                            -cdslib ./cds_libs/id_router.cds.lib                                                                           
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_addr_router_002.vho"                                                                      -work addr_router_002                                                                      -cdslib ./cds_libs/addr_router_002.cds.lib                                                                     
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_addr_router_001.vho"                                                                      -work addr_router_001                                                                      -cdslib ./cds_libs/addr_router_001.cds.lib                                                                     
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_addr_router.vho"                                                                          -work addr_router                                                                          -cdslib ./cds_libs/addr_router.cds.lib                                                                         
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_Pixel_Buffer_avalon_ssram_slave_translator_avalon_universal_slave_0_agent_rsp_fifo.vho"   -work Pixel_Buffer_avalon_ssram_slave_translator_avalon_universal_slave_0_agent_rsp_fifo   -cdslib ./cds_libs/Pixel_Buffer_avalon_ssram_slave_translator_avalon_universal_slave_0_agent_rsp_fifo.cds.lib  
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_sdram_s1_translator_avalon_universal_slave_0_agent_rdata_fifo.vho"                        -work sdram_s1_translator_avalon_universal_slave_0_agent_rdata_fifo                        -cdslib ./cds_libs/sdram_s1_translator_avalon_universal_slave_0_agent_rdata_fifo.cds.lib                       
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_sdram_s1_translator_avalon_universal_slave_0_agent_rsp_fifo.vho"                          -work sdram_s1_translator_avalon_universal_slave_0_agent_rsp_fifo                          -cdslib ./cds_libs/sdram_s1_translator_avalon_universal_slave_0_agent_rsp_fifo.cds.lib                         
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_nios2_processor_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo.vho" -work nios2_processor_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo -cdslib ./cds_libs/nios2_processor_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo.cds.lib
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_video_dma_control_slave.v"                                                             -work Video_DMA                                                                            -cdslib ./cds_libs/Video_DMA.cds.lib                                                                           
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_video_dma_to_memory.v"                                                                 -work Video_DMA                                                                            -cdslib ./cds_libs/Video_DMA.cds.lib                                                                           
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_video_dma_to_stream.v"                                                                 -work Video_DMA                                                                            -cdslib ./cds_libs/Video_DMA.cds.lib                                                                           
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_Video_DMA.vhd"                                                                            -work Video_DMA                                                                            -cdslib ./cds_libs/Video_DMA.cds.lib                                                                           
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_Video_RGB_Resampler_0.vhd"                                                                -work Video_RGB_Resampler_0                                                                -cdslib ./cds_libs/Video_RGB_Resampler_0.cds.lib                                                               
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_video_scaler_shrink.v"                                                                 -work Video_Scaler_0                                                                       -cdslib ./cds_libs/Video_Scaler_0.cds.lib                                                                      
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_width.v"                                                         -work Video_Scaler_0                                                                       -cdslib ./cds_libs/Video_Scaler_0.cds.lib                                                                      
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_height.v"                                                        -work Video_Scaler_0                                                                       -cdslib ./cds_libs/Video_Scaler_0.cds.lib                                                                      
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_Video_Scaler_0.vhd"                                                                       -work Video_Scaler_0                                                                       -cdslib ./cds_libs/Video_Scaler_0.cds.lib                                                                      
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_video_clipper_add.v"                                                                   -work Video_Clipper                                                                        -cdslib ./cds_libs/Video_Clipper.cds.lib                                                                       
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_video_clipper_drop.v"                                                                  -work Video_Clipper                                                                        -cdslib ./cds_libs/Video_Clipper.cds.lib                                                                       
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_video_clipper_counters.v"                                                              -work Video_Clipper                                                                        -cdslib ./cds_libs/Video_Clipper.cds.lib                                                                       
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_Video_Clipper.vhd"                                                                        -work Video_Clipper                                                                        -cdslib ./cds_libs/Video_Clipper.cds.lib                                                                       
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_Video_Bayer_Pattern_Resampler.vhd"                                                        -work Video_Bayer_Pattern_Resampler                                                        -cdslib ./cds_libs/Video_Bayer_Pattern_Resampler.cds.lib                                                       
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_video_itu_656_decoder.v"                                                               -work Video_In_Decoder                                                                     -cdslib ./cds_libs/Video_In_Decoder.cds.lib                                                                    
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_video_decoder_add_endofpacket.v"                                                       -work Video_In_Decoder                                                                     -cdslib ./cds_libs/Video_In_Decoder.cds.lib                                                                    
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_video_camera_decoder.v"                                                                -work Video_In_Decoder                                                                     -cdslib ./cds_libs/Video_In_Decoder.cds.lib                                                                    
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_video_dual_clock_fifo.v"                                                               -work Video_In_Decoder                                                                     -cdslib ./cds_libs/Video_In_Decoder.cds.lib                                                                    
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_Video_In_Decoder.vhd"                                                                     -work Video_In_Decoder                                                                     -cdslib ./cds_libs/Video_In_Decoder.cds.lib                                                                    
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_av_config_serial_bus_controller.v"                                                     -work AV_Config                                                                            -cdslib ./cds_libs/AV_Config.cds.lib                                                                           
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_slow_clock_generator.v"                                                                -work AV_Config                                                                            -cdslib ./cds_libs/AV_Config.cds.lib                                                                           
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init.v"                                                                 -work AV_Config                                                                            -cdslib ./cds_libs/AV_Config.cds.lib                                                                           
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_dc2.v"                                                             -work AV_Config                                                                            -cdslib ./cds_libs/AV_Config.cds.lib                                                                           
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_d5m.v"                                                             -work AV_Config                                                                            -cdslib ./cds_libs/AV_Config.cds.lib                                                                           
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_lcm.v"                                                             -work AV_Config                                                                            -cdslib ./cds_libs/AV_Config.cds.lib                                                                           
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ltm.v"                                                             -work AV_Config                                                                            -cdslib ./cds_libs/AV_Config.cds.lib                                                                           
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_35.v"                                                       -work AV_Config                                                                            -cdslib ./cds_libs/AV_Config.cds.lib                                                                           
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_adv7181.v"                                                      -work AV_Config                                                                            -cdslib ./cds_libs/AV_Config.cds.lib                                                                           
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_70.v"                                                       -work AV_Config                                                                            -cdslib ./cds_libs/AV_Config.cds.lib                                                                           
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_115.v"                                                      -work AV_Config                                                                            -cdslib ./cds_libs/AV_Config.cds.lib                                                                           
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_audio.v"                                                        -work AV_Config                                                                            -cdslib ./cds_libs/AV_Config.cds.lib                                                                           
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_adv7180.v"                                                      -work AV_Config                                                                            -cdslib ./cds_libs/AV_Config.cds.lib                                                                           
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_AV_Config.vhd"                                                                            -work AV_Config                                                                            -cdslib ./cds_libs/AV_Config.cds.lib                                                                           
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_sysid_qsys.vho"                                                                           -work sysid_qsys                                                                           -cdslib ./cds_libs/sysid_qsys.cds.lib                                                                          
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_jtag_uart.vhd"                                                                            -work jtag_uart                                                                            -cdslib ./cds_libs/jtag_uart.cds.lib                                                                           
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_timer.vhd"                                                                                -work timer                                                                                -cdslib ./cds_libs/timer.cds.lib                                                                               
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_sdram.vhd"                                                                                -work sdram                                                                                -cdslib ./cds_libs/sdram.cds.lib                                                                               
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_Pixel_Buffer.vhd"                                                                         -work Pixel_Buffer                                                                         -cdslib ./cds_libs/Pixel_Buffer.cds.lib                                                                        
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_video_scaler_shrink.v"                                                                 -work Video_Scaler_1                                                                       -cdslib ./cds_libs/Video_Scaler_1.cds.lib                                                                      
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_width.v"                                                         -work Video_Scaler_1                                                                       -cdslib ./cds_libs/Video_Scaler_1.cds.lib                                                                      
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_height.v"                                                        -work Video_Scaler_1                                                                       -cdslib ./cds_libs/Video_Scaler_1.cds.lib                                                                      
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_Video_Scaler_1.vhd"                                                                       -work Video_Scaler_1                                                                       -cdslib ./cds_libs/Video_Scaler_1.cds.lib                                                                      
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_avalon_video_vga_timing.v"                                                             -work VGA_Controller                                                                       -cdslib ./cds_libs/VGA_Controller.cds.lib                                                                      
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_VGA_Controller.vhd"                                                                       -work VGA_Controller                                                                       -cdslib ./cds_libs/VGA_Controller.cds.lib                                                                      
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_Video_RGB_Resampler_1.vhd"                                                                -work Video_RGB_Resampler_1                                                                -cdslib ./cds_libs/Video_RGB_Resampler_1.cds.lib                                                               
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_Pixel_Buffer_DMA.vhd"                                                                     -work Pixel_Buffer_DMA                                                                     -cdslib ./cds_libs/Pixel_Buffer_DMA.cds.lib                                                                    
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_Dual_Clock_FIFO.vhd"                                                                      -work Dual_Clock_FIFO                                                                      -cdslib ./cds_libs/Dual_Clock_FIFO.cds.lib                                                                     
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_nios2_processor.vho"                                                                      -work nios2_processor                                                                      -cdslib ./cds_libs/nios2_processor.cds.lib                                                                     
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_nios2_processor_jtag_debug_module_sysclk.vhd"                                             -work nios2_processor                                                                      -cdslib ./cds_libs/nios2_processor.cds.lib                                                                     
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_nios2_processor_jtag_debug_module_tck.vhd"                                                -work nios2_processor                                                                      -cdslib ./cds_libs/nios2_processor.cds.lib                                                                     
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_nios2_processor_jtag_debug_module_wrapper.vhd"                                            -work nios2_processor                                                                      -cdslib ./cds_libs/nios2_processor.cds.lib                                                                     
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_nios2_processor_mult_cell.vhd"                                                            -work nios2_processor                                                                      -cdslib ./cds_libs/nios2_processor.cds.lib                                                                     
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_nios2_processor_oci_test_bench.vhd"                                                       -work nios2_processor                                                                      -cdslib ./cds_libs/nios2_processor.cds.lib                                                                     
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_nios2_processor_test_bench.vhd"                                                           -work nios2_processor                                                                      -cdslib ./cds_libs/nios2_processor.cds.lib                                                                     
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/de2_70_Clock_Signals.vhd"                                                                        -work Clock_Signals                                                                        -cdslib ./cds_libs/Clock_Signals.cds.lib                                                                       
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70.vhd"                                                                                                                                                                                                                                                                                                           
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_limiter.vhd"                                                                                                                                                                                                                                                                                                   
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_limiter_002.vhd"                                                                                                                                                                                                                                                                                               
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_width_adapter.vhd"                                                                                                                                                                                                                                                                                             
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_width_adapter_002.vhd"                                                                                                                                                                                                                                                                                         
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_width_adapter_003.vhd"                                                                                                                                                                                                                                                                                         
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_width_adapter_006.vhd"                                                                                                                                                                                                                                                                                         
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_width_adapter_008.vhd"                                                                                                                                                                                                                                                                                         
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_width_adapter_010.vhd"                                                                                                                                                                                                                                                                                         
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_nios2_processor_jtag_debug_module_translator_avalon_universal_slave_0_agent.vhd"                                                                                                                                                                                                                               
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_sdram_s1_translator_avalon_universal_slave_0_agent.vhd"                                                                                                                                                                                                                                                        
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_nios2_processor_instruction_master_translator.vhd"                                                                                                                                                                                                                                                             
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_nios2_processor_data_master_translator.vhd"                                                                                                                                                                                                                                                                    
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_pixel_buffer_dma_avalon_pixel_dma_master_translator.vhd"                                                                                                                                                                                                                                                       
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_video_dma_avalon_dma_master_translator.vhd"                                                                                                                                                                                                                                                                    
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_nios2_processor_jtag_debug_module_translator.vhd"                                                                                                                                                                                                                                                              
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_sdram_s1_translator.vhd"                                                                                                                                                                                                                                                                                       
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_pixel_buffer_dma_avalon_control_slave_translator.vhd"                                                                                                                                                                                                                                                          
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_pixel_buffer_avalon_ssram_slave_translator.vhd"                                                                                                                                                                                                                                                                
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_timer_s1_translator.vhd"                                                                                                                                                                                                                                                                                       
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_jtag_uart_avalon_jtag_slave_translator.vhd"                                                                                                                                                                                                                                                                    
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_sysid_qsys_control_slave_translator.vhd"                                                                                                                                                                                                                                                                       
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_nios2_processor_instruction_master_translator_avalon_universal_master_0_agent.vhd"                                                                                                                                                                                                                             
  ncvhdl -v93 "$QSYS_SIMDIR/de2_70_pixel_buffer_dma_avalon_pixel_dma_master_translator_avalon_universal_master_0_agent.vhd"                                                                                                                                                                                                                       
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  ncelab -access +w+r+c -namemap_mixgen -relax $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim -licqueue $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi

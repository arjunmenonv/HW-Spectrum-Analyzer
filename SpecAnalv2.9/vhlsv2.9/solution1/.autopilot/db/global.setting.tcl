
set TopModule "FFT"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7z020:-clg400:-1
set SourceFiles {sc {} c ../../vhls_src/fft.cpp}
set SourceFlags {sc {} c {{}}}
set DirectiveFile /home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv2.9/vhlsv2.9/solution1/solution1.directive
set TBFiles {verilog {../../test_data/out_hann.txt ../../test_data/out_hamm.txt ../../test_data/out_black.txt ../../test_data/inp.txt ../../vhls_src/fft_tb.cpp} bc {../../test_data/out_hann.txt ../../test_data/out_hamm.txt ../../test_data/out_black.txt ../../test_data/inp.txt ../../vhls_src/fft_tb.cpp} vhdl {../../test_data/out_hann.txt ../../test_data/out_hamm.txt ../../test_data/out_black.txt ../../test_data/inp.txt ../../vhls_src/fft_tb.cpp} sc {../../test_data/out_hann.txt ../../test_data/out_hamm.txt ../../test_data/out_black.txt ../../test_data/inp.txt ../../vhls_src/fft_tb.cpp} cas {../../test_data/out_hann.txt ../../test_data/out_hamm.txt ../../test_data/out_black.txt ../../test_data/inp.txt ../../vhls_src/fft_tb.cpp} c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../vivado_hls.app
set ApsFile solution1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq xilinx/zynq/zynq_fpv6}}}
set HPFPO 0

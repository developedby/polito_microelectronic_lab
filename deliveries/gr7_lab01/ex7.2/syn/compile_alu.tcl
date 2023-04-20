analyze -library work -format vhdl {constants.vhd alu_type.vhd alu.vhd}
elaborate -parameters {N=4} -library work cfg_alu_behavioral
compile -exact_map
write -hierarchy -format vhdl -output ./alu_compiled.vhdl
report_timing > alu_timing_report.txt
report_area > alu_area_report.txt

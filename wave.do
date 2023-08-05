onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/p_c1/clk
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/p_c1/rst
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/p_c1/pc_next
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/p_c1/pc
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/instr_mem1/a
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/instr_mem1/rd
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/pc_adder1/a
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/pc_adder1/b
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/pc_adder1/c
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/sign_extend1/in
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/sign_extend1/imm_ext
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/reg_file1/a1
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/reg_file1/a2
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/reg_file1/a3
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/reg_file1/rd1
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/reg_file1/rd2
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/reg_file1/we3
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/reg_file1/wd3
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/alu1/a
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/alu1/b
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/alu1/alucontrol
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/alu1/result
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/control_unit_top1/op
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/control_unit_top1/funct3
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/control_unit_top1/alucontrol
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/control_unit_top1/regwrite
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/data_memory1/a
add wave -noupdate -radix hexadecimal /single_cycle_top_tb/single_cycle_top1/data_memory1/rd
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {16 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 399
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {186 ps}

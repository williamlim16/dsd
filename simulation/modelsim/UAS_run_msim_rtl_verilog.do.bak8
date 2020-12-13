transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+A:/Tugas/Semester\ 5/DSD/UAS {A:/Tugas/Semester 5/DSD/UAS/ALU.v}
vlog -vlog01compat -work work +incdir+A:/Tugas/Semester\ 5/DSD/UAS {A:/Tugas/Semester 5/DSD/UAS/Control_Unit.v}
vlog -vlog01compat -work work +incdir+A:/Tugas/Semester\ 5/DSD/UAS {A:/Tugas/Semester 5/DSD/UAS/Datapath_Unit.v}
vlog -vlog01compat -work work +incdir+A:/Tugas/Semester\ 5/DSD/UAS {A:/Tugas/Semester 5/DSD/UAS/GPRs.v}
vlog -vlog01compat -work work +incdir+A:/Tugas/Semester\ 5/DSD/UAS {A:/Tugas/Semester 5/DSD/UAS/Parameter.v}
vlog -vlog01compat -work work +incdir+A:/Tugas/Semester\ 5/DSD/UAS {A:/Tugas/Semester 5/DSD/UAS/Risc_16_bit.v}
vlog -vlog01compat -work work +incdir+A:/Tugas/Semester\ 5/DSD/UAS {A:/Tugas/Semester 5/DSD/UAS/alu_control.v}
vlog -vlog01compat -work work +incdir+A:/Tugas/Semester\ 5/DSD/UAS {A:/Tugas/Semester 5/DSD/UAS/Data_Memory.v}
vlog -vlog01compat -work work +incdir+A:/Tugas/Semester\ 5/DSD/UAS {A:/Tugas/Semester 5/DSD/UAS/Instruction_Memory.v}

vlog -vlog01compat -work work +incdir+A:/Tugas/Semester\ 5/DSD/UAS {A:/Tugas/Semester 5/DSD/UAS/Risc_16_bit_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  Risc_16_bit_tb

add wave *
view structure
view signals
run -all

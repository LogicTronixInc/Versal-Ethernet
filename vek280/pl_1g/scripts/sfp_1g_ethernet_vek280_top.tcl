# Set the name of the project:
set project_name sfp_1g_ethernet_vek280

# Set the path to the constraints file:
set impl_const ../hardware/constraints/vek280_ethernet.xdc

# Set the project device:
set device xcve2802-vsvh1760-2MP-e-S

# Set the path to the directory we want to put the Vivado build in. Convention is <PROJECT NAME>_hw
set proj_dir ../hardware/${project_name}/${project_name}_hw

create_project -name ${project_name} -force -dir ${proj_dir} -part ${device}

set_property board_part xilinx.com:vek280:part0:1.2 [current_project]

# Source the BD file, BD nameing convention is <PROJECT_NAME>_bd.tcl

source ${project_name}_bd.tcl

add_files -fileset constrs_1 -norecurse ./${impl_const}
set_property used_in_synthesis true [get_files ./${impl_const}]

make_wrapper -files [get_files ${proj_dir}/${project_name}.srcs/sources_1/bd/${project_name}/${project_name}.bd] -top

add_files -norecurse ${proj_dir}/${project_name}.srcs/sources_1/bd/${project_name}/hdl/${project_name}_wrapper.v 
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

validate_bd_design
save_bd_design
close_bd_design ${project_name}

open_bd_design ${proj_dir}/${project_name}.srcs/sources_1/bd/${project_name}/${project_name}.bd
set_property synth_checkpoint_mode None [get_files ${proj_dir}/${project_name}.srcs/sources_1/bd/${project_name}/${project_name}.bd]

launch_runs synth_1 
wait_on_run synth_1
launch_runs impl_1 
wait_on_run impl_1
open_run impl_1
launch_runs impl_1 -to_step write_device_image 
wait_on_run impl_1
file mkdir ../hardware/xsa
write_hw_platform -fixed -include_bit -force -file ../hardware/xsa/${project_name}_wrapper.xsa
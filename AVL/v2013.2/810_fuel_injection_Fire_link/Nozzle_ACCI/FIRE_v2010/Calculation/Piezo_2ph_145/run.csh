#!/bin/csh -f

set case=Piezo_2ph_145
set port=7721
set vers=v2010

echo "port number is $port ..."

acci_server -v=$vers $port hydsim_fire.acci >& acci.log &

rm -rf .isstopping

cfdwm_solver -solver_vers=$vers -mpi -cpu=4 -project_dir=$cwd/../.. -project=empty.fpr -case=$case -prof_msg_lvl=100 -noflb -no_file_locking -acci_client $case -acci_host localhost -acci_port $port &

# restart:
#cfdwm_solver -solver_vers=$vers -mpi -cpu=4 -project_dir=$cwd/../.. -project=empty.fpr -case=$case -prof_msg_lvl=100 -noflb -no_file_locking -restart SAC_nozzle_time.rs1 -acci_client $case -acci_host localhost -acci_port $port &


tail -f ${case}.fla

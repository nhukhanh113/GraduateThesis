#!/bin/csh -f

set case=VCO_half_nozzle_time
set port=8877
set vers=v2010.022

echo "port number is $port ..."

acci_server -v=$vers $port hydsim_fire.acci >& acci.log &

rm -rf .isstopping

#cfdwm_solver -solver_vers=$vers -project_dir=$cwd/../.. -project=empty.fpr -case=$case -prof_msg_lvl=100 -noflb -no_file_locking -acci_client $case -acci_host localhost -acci_port $port &
cfdwm_solver -solver_vers=$vers -mpi -cpu=4 -project_dir=$cwd/../.. -project=empty.fpr -case=$case -prof_msg_lvl=100 -noflb -no_file_locking -acci_client $case -acci_host localhost -acci_port $port &


tail -f ${case}.fla

#!/bin/bash

# declare a name for this job to be sample_job
#PBS -N vmmc_job
# request the queue (enter the possible names, if omitted, serial is the default)
#PBS -q batch 
# request 1 node
#PBS -l nodes=1
# specify your email address
# By default, PBS scripts execute in your home directory, not the 
# directory from which they were submitted. The following line 
# places you in the directory from which the job was submitted.  

cd $PBS_O_WORKDIR

START_TIME=$SECONDS

/home/petr/software/oxDNA/oxdna-code/oxDNA/build/bin/oxDNA input 





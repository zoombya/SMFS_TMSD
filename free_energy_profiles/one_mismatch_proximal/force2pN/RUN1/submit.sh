#!/bin/bash
#SBATCH -n 1                        # number of cores
#SBATCH -t 4-02:00                  # wall time (D-HH:MM)
#SBATCH -A psulc                    # Account hours will be pulled from (commented out with double # in front)
#SBATCH -o slurm.%j.out             # STDOUT (%j = JobId)
#SBATCH -e slurm.%j.err             # STDERR (%j = JobId)
#SBATCH --job-name="repull"




module purge    # Always purge modules to ensure a consistent environment

#module add cuda/10.2.89
module add gcc/7.5.0

/home/psulc/oxdna-lorenzo/oxDNA/build/bin/oxDNA input
#/home/psulc/DIAMONDS/KERN_FRENKEL/oxdna-code/oxDNA/build/bin/oxDNA input_KF

#/home/psulc/DIAMONDS/oxdna/latest_oxDNA/oxdna-code/oxDNA/build/bin/oxDNA input_BIG


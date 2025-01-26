#!/bin/bash -l

#SBATCH --ntasks=4
#SBATCH --ntasks-per-node=4
#SBATCH --time=00:10:00
#SBATCH --reservation=ibex-101

srun -n 4 echo "Hello world!"
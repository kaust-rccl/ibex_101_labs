#!/bin/bash -l

#SBATCH --ntasks=32
#SBATCH --ntasks-per-node=32
#SBATCH --time=00:10:00
#SBATCH --reservation=ibex-101

srun -n 32 echo "Hello world!"
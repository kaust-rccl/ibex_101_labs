#!/bin/bash -l
#SBATCH --time=00:10:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --constraint=intel #amd
#SBATCH --reservation=ibex-101

lscpu

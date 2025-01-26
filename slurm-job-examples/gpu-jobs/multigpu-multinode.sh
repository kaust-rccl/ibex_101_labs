#!/bin/bash -l
#SBATCH --time=00:10:00
#SBATCH --ntasks=2
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=32G
#SBATCH --gpus=4
#SBATCH --gpus-per-node=2
#SBATCH --constraint=gtx1080ti
#SBATCH --reservation=ibex-101


module load cuda/11.8

srun -n 2 -N 2 -c 6 ./multi_gpu_program
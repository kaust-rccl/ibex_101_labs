#!/bin/bash -l
#SBATCH --time=00:10:00
#SBATCH --cpus-per-task=2
#SBATCH --mem=64G
#SBATCH --gpus=2
#SBATCH --gpus-per-node=2
#SBATCH --constraint=gtx1080ti
#SBATCH --reservation=ibex-101

module load cuda/11.8
srun -c 4 ./multi_gpu_program
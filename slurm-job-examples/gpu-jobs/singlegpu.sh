#!/bin/bash -l
#SBATCH --time=00:10:00
#SBATCH --gpus=1
#SBATCH --reservation=ibex-101

module load cuda/11.8
nvidia-smi
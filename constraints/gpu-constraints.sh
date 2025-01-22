#!/bin/bash -l
#SBATCH --time=00:10:00
#SBATCH --gpus=1
#SBATCH --constraint=gtx1080ti #v100
#SBATCH --reservation=ibex-101

nvidia-smi
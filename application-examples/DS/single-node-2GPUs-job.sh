#!/bin/bash -l
#SBATCH --job-name=pytorch_multi_gpu  # Job name
#SBATCH --nodes=1                        # Use a single node
#SBATCH --ntasks=1                       # One task
#SBATCH --gpus=2                         # Request 2 GPUs
#SBATCH --cpus-per-task=8                # Request 8 CPUs
#SBATCH --mem=32G                        # Request 32G memory
#SBATCH --time=00:10:00                  # Time limit (hh:mm:ss)
#SBATCH --reservatin=ibex-101            # use ibex-101 reservation

# Load necessary modules (if required)
module load machine_learning/2024.01

# Run the PyTorch script
python pytorch_demo.py
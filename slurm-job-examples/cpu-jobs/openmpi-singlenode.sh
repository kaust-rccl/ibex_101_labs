#!/bin/bash -l
#SBATCH --time=00:10:00
#SBATCH --ntasks=4
#SBATCH --tasks-per-node=4
#SBATCH --reservation=ibex-101

# Load the OpenMPI module
module load openmpi

# Print some information about the job
echo "Job running on $(hostname)"
echo "Number of tasks: $SLURM_NTASKS"
echo "Nodes allocated: $SLURM_JOB_NODELIST"

# Run the MPI program
mpirun -np 4 ./mpi_hello_world
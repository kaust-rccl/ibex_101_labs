#!/bin/bash -l
#SBATCH --job-name=email_example        # Job name
#SBATCH --output=email_example.out      # Standard output log
#SBATCH --error=email_example.err       # Error log
#SBATCH --nodes=1                       # Number of nodes
#SBATCH --ntasks=1                      # Number of tasks
#SBATCH --time=00:05:00                 # Time limit (hh:mm:ss)
#SBATCH --mail-type=ALL                 # Send email for all job events
#SBATCH --mail-user=your_email@kaust.edu.sa  # Your KAUST email address
#SBATCH --reservation=ibex-101            # use ibex-101 reservation

# Print some information about the job
echo "Job started on $(hostname) at $(date)"

# Simulate some work
sleep 60 #The sleep command tells the system to do nothing for the specified number of seconds.

# Job completion message
echo "Job completed at $(date)"
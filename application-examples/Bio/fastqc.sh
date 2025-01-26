#!/bin/bash -l
#SBATCH --nodes=1                       ## No. of nodes to be used
#SBATCH --cpus-per-task=4               ## No. of threads to be used for this FastQC
#SBATCH --job-name=QC                   ## Name of your job
#SBATCH --output=QC.%J.out              ## Console output file
#SBATCH --error=QC.%J.err               ## Console error file
#SBATCH --time=01:30:00                 ## Expected execution time of your job
#SBATCH --mem=2G                        ## Estimated memory size (e.g. more than or equal to your fastq file)
#SBATCH --reservation=ibex-101

#fetch the dataset files
cp -r /ibex/scratch/projects/ibex_cs_temp/ibex_101/dataset/ ./
cd dataset

#run the application:
module load fastqc/0.11.8
fastqc --threads 4 SRR975578_1.fastq.gz SRR975578_2.fastq.gz
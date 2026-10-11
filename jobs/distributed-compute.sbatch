#!/bin/bash
#SBATCH --job-name=distributed-compute
#SBATCH --partition=compute
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=4
#SBATCH --time=00:05:00
#SBATCH --output=/shared/queens-hpc-%j.out

echo "Job ID: $SLURM_JOB_ID"
echo "Allocated nodes: $SLURM_JOB_NODELIST"
echo "Total tasks: $SLURM_NTASKS"

srun hostname

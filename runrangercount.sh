#!/bin/sh 
# 
#SBATCH --verbose 
#SBATCH --job-name=rangercount 
#SBATCH --output=cellr_count_%j.out
#SBATCH --error=cellr_count_%j.err 
#SBATCH --time=48:00:00
#SBATCH --nodes=1 
#SBATCH --ntasks-per-node=20                                                    
#SBATCH --mem=62000 
#SBATCH --mail-type=END
#SBATCH --mail-user=dno214@nyu.edu
module purge
module load cellranger/3.0.1
echo $(date)
echo "ID: $1"
echo "Sample: $2"
echo "FastQ: $3"
echo "Transcriptome: $4"
cellranger count --id=$1 --sample=$2 --fastqs=$3 --transcriptome=$4


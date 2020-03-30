#!/bin/sh 
# 
#SBATCH --verbose 
#SBATCH --job-name=rangermkref 
#SBATCH --output=cellr_ref_%j.out
#SBATCH --error=cellr_ref_%j.err 
#SBATCH --time=24:00:00
#SBATCH --nodes=1 
#SBATCH --ntasks-per-node=20                                                    
#SBATCH --mem=120000 
#SBATCH --mail-type=END
#SBATCH --mail-user=dno214@nyu.edu

module load cellranger/3.0.1

cd/scratch/$USER/cellrangertest

echo "Genome: $1"
echo "FASTA: $2"
echo "GTF: $3"

cellranger mkref --genome=$1 --fasta=$2 --genes=$3



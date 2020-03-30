#!/bin/bash                                                                       
#                                                                               
#SBATCH --verbose                                                               
#SBATCH --job-name=rangermkfq                                                   
#SBATCH --output=cellr_mkfastq_%j.out                                                   
#SBATCH --error=cellr_mkfastq_%j.err                                                    
#SBATCH --time=24:00:00                                                         
#SBATCH --nodes=1                                                               
#SBATCH --ntasks-per-node=20                                                    
#SBATCH --mem=62000                                                            
#SBATCH --mail-type=END
#SBATCH --mail-user=dno214@nyu.edu   
                                          
module load cellranger/3.0.1

echo "Run: $1"
echo "CSV: $2"
echo "Output: $3"
cellranger mkfastq --run=$1 --csv=$2 --output-dir=$3


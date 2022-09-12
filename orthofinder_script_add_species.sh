#!/bin/bash

#SBATCH --account=rsbaucom0
#SBATCH --job-name=Orthofinder_9-9_Rifkin_ipomoea
#SBATCH --mail-user=jlrifkin@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --cpus-per-task=6
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=2GB 
#SBATCH --time=480:00
#SBATCH --partition=standard
#SBATCH --output=orthofinder-%A-%a.log


module use /nfs/turbo/rsbaucom/lab/Lmod
module load orthofinder_module

orthofinder -t 6 -b /home/jlrifkin/Analyses/Orthofinder_analyses/Ipomoea_9-9-2022/primary_transcripts/OrthoFinder/Results_Sep09_2/WorkingDirectory -f /home/jlrifkin/Analyses/Orthofinder_analyses/Ipomoea_9-9-2022/I_purpurea_primary_transcripts

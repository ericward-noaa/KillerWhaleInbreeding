#!/bin/sh
#SBATCH --job-name=bwa_Eschrichtius_robustus_HiC.softMask_pruned_reads1
#SBATCH --output=bwa_Eschrichtius_robustus_HiC.softMask_pruned_reads1.log
#SBATCH --mem=90GB
#SBATCH -t 2000:00:00
#SBATCH -c 10
#SBATCH -D /scratch/mkardos/orca/cetaceanGenomes/cactus
module load aligners/bwa
bwa mem -B 3 kw_ref.fa Eschrichtius_robustus_HiC.softMask_pruned_reads1.fastq > Eschrichtius_robustus_HiC.softMask_pruned_reads1.sam

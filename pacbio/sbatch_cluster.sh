#!/bin/bash
#SBATCH -p fast                      # partition
#SBATCH --cpus-per-task 4
#SBATCH --mem-per-cpu 4GB                    # mémoire vive pour l'ensemble des cœurs
#SBATCH -t 0-1:00                    # durée maximum du travail (D-HH:MM)
#SBATCH -o slurm.%N.%j.out           # STDOUT
#SBATCH -e slurm.%N.%j.err           # STDERR
# #SBATCH --mail-user=vaulot@sb-roscoff.fr # Replace with uio email
#SBATCH --mail-type=BEGIN,END,FAIL


# Partition can be also fast, long, bigmem





# Submitted with 
# cd /shared/projects/geek_simple_laby/clarence/Laby_18S_Canada # Change to your directory
# sbatch sbatch_cluster.sh


# Print information about the current job
# ---------------------------------------


module load vsearch

DIR="/shared/projects/geek_simple_laby/clarence/Laby_18S_Canada" # Change to your directory
FILE_HEAD="Laby_18S_Canada.pacbio"
IDENTITY="0.95"
THREADS=4

# compare environmental sequences to known reference sequences

cd $DIR

vsearch --cluster_size "${FILE_HEAD}.fasta" \
    --threads "${THREADS}" \
    --id "${IDENTITY}" \
    --uc clusters_${IDENTITY}_$FILE_HEAD.tsv \
    --msaout clusters_${IDENTITY}_$FILE_HEAD.align.fasta \
    --sizeout \
    --centroids clusters_${IDENTITY}_$FILE_HEAD.centroids.fasta \
    --clusterout_sort \
    --clusterout_id





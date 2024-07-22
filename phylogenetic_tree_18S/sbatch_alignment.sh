#!/bin/bash
#SBATCH -p fast                      # partition
#SBATCH --cpus-per-task 32
#SBATCH --mem-per-cpu 4GB                    # mémoire vive pour l'ensemble des cœurs
##SBATCH -t 6-0:00                    # durée maximum du travail (D-HH:MM)
#SBATCH -o slurm.%N.%j.out           # STDOUT
#SBATCH -e slurm.%N.%j.err           # STDERR
# #SBATCH --mail-user=simw0034@e.ntu.edu.sg
#SBATCH --mail-type=BEGIN,END,FAIL

# Submitted with 
# cd /shared/projects/geek_simple_laby/clarence/Laby_tree
# sbatch sbatch_alignment.sh


DATE=`date +%Y-%m-%d`

TAXON="laby"
FILE_LABY="Labyrinthula_tree_cluster_foralignment.fasta"
FILE_LABY_ALIGNED="laby.aligned.fasta"
FILE_LABY_TRIMMED="laby.aligned.trimmed.fasta"
FILE_LABY_IQTREE="laby.iqtree.newick"

cd /shared/projects/geek_simple_laby/clarence/Laby_tree

module load mafft

mafft --thread -1 --reorder --auto $FILE_LABY > $FILE_LABY_ALIGNED

module load trimal


# trimall parameters
#    -gt -gapthreshold <n>    1 - (fraction of sequences with a gap allowed).
#    -st -simthreshold <n>    Minimum average similarity allowed.

trimal -in $FILE_LABY_ALIGNED -out $FILE_LABY_TRIMMED -gt 0.3 -st 0.001


# module load raxml

# raxmlHPC-PTHREADS-SSE3 -T 32 -m GTRCAT -c 25 -e 0.001 -p 31415 -f a -N 100 -x 02938 -n $TAXON -s $FILE_LABY_TRIMMED

module load iqtree

iqtree -s $FILE_LABY_TRIMMED -m MFP  -bb 1000 
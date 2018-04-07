#!/bin/bash
#SBATCH --job-name=david_norm
#SBATCH --mail-user=david.ortiz11@upr.edu
#SBATCH --mail-type=ALL
#SBATCH --workdir=/work/humberto/dortiz/trimmed
#SBATCH --error=/work/humberto/dortiz/trimmed/normalize.e
#SBATCH --output=/work/humberto/dortiz/normalize.o

module load python2
. /work/humberto/asanquiche/tools/khmerenv/bin/activate khmer

for file in /work/humberto/dortiz/trimmed/*
do

echo working on $file >> normjob
normalize-by-median.py -k 20 -C 20 -x 6e9 $file
done;

deactivate

#!/bin/bash
#SBATCH --job-name=david_salmon
#SBATCH --mail-user=david.ortiz11@upr.edu
#SBATCH --mail-type=ALL
#SBATCH --workdir=/work/humberto/dortiz/salmon/
#SBATCH --error=/work/humberto/dortiz/tools/salmon.e
#SBATCH --output=/work/humberto/dortiz/tools/salm.o

/work/humberto/dortiz/tools/Salmon-0.8.2_linux_x86_64/bin/salmon index -t /work/humberto/dortiz/trinity/Trinity.fasta -i /work/humberto/dortiz/salmon/pepino_index --type quasi -k 21

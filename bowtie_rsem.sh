#!/bin/sh
#SBATCH --time 2:00:00
# default queue, 2 processors (== 1 nodes worth)
#SBATCH -p defq -n 8
#SBATCH --job-name=rsem_genes
#SBATCH --output=rsem_genes.out
#SBATCH --error=rsem_genes.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=email@server.com

module load R
module load rsem/1.2.11
module load samtools
module load bowtie2

/groups/ortilab/trinityrnaseq-2.1.1/util/align_and_estimate_abundance.pl --transcripts AstyanaxMexicanus.fasta --seqType fq --left /home/arcilame/AA_Transcriptomics_RSEM/SRR639083_1.fastq --right /home/arcilame/AA_Transcriptomics_RSEM/SRR639083_2.fastq  --est_method RSEM --aln_method bowtie2 --thread_count 8 --output_dir /home/arcilame/AA_Transcriptomics_RSEM/RSEM --output_prefix Astyanax_Surface.RSEM --gene_trans_map gene-trans-map-agouti.txt --SS_lib_type RF ;
/groups/ortilab/trinityrnaseq-2.1.1/util/align_and_estimate_abundance.pl --transcripts AstyanaxMexicanus.fasta --seqType fq --left /home/arcilame/AA_Transcriptomics_RSEM/SRR639085_1.fastq --right /home/arcilame/AA_Transcriptomics_RSEM/SRR639085_2.fastq  --est_method RSEM --aln_method bowtie2 --thread_count 8 --output_dir /home/arcilame/AA_Transcriptomics_RSEM/RSEM --output_prefix Astyanax_Cave.RSEM --gene_trans_map gene-trans-map-agouti.txt --SS_lib_type RF ;
/groups/ortilab/trinityrnaseq-2.1.1/util/align_and_estimate_abundance.pl --transcripts Stygicthys.fasta --seqType fq --single Individuo_1.fasta --est_method RSEM --aln_method bowtie2 --thread_count 8 --output_dir /home/arcilame/AA_Transcriptomics_RSEM/RSEM --output_prefix Individuo_1.RSEM --gene_trans_map gene-trans-map-agouti.txt --SS_lib_type RF ;
/groups/ortilab/trinityrnaseq-2.1.1/util/align_and_estimate_abundance.pl --transcripts Stygicthys.fasta --seqType fq --single Individuo_02.fasta --est_method RSEM --aln_method bowtie2 --thread_count 8 --output_dir /home/arcilame/AA_Transcriptomics_RSEM/RSEM --output_prefix Individuo_2.RSEM --gene_trans_map gene-trans-map-agouti.txt --SS_lib_type RF ;
/groups/ortilab/trinityrnaseq-2.1.1/util/align_and_estimate_abundance.pl --transcripts Stygicthys.fasta --seqType fq --single Individuo_03.fasta --est_method RSEM --aln_method bowtie2 --thread_count 8 --output_dir /home/arcilame/AA_Transcriptomics_RSEM/RSEM --output_prefix Individuo_3.RSEM --gene_trans_map gene-trans-map-agouti.txt --SS_lib_type RF ;

cd RSEM

/groups/ortilab/trinityrnaseq-2.1.1/util/abundance_estimates_to_matrix.pl --est_method RSEM --out_prefix genes.all.samples Astyanax_Surface.RSEM.genes.results Astyanax_Cave.RSEM.genes.results Individuo_1.RSEM.genes.results Individuo_2.RSEM.genes.results Individuo_3.RSEM.genes.results

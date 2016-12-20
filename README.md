# Bioinformatics

##Phylogeny Project description:

Working under the supervision of Prof. Humberto Ortiz Zuazaga, Ricardo Betancourt,
and Dahiana Arcila I'm currently trying to find Diferential Expressions from different 
species of fishes (Astyanax, Styygicthys, Sinocheilus) through data obtained from transcriptomics 
to determine if there is any genetic convergence.
+ step 1 : de novo assembly on Stygicthys raw data files using Trinity.
+ step 2 : mapping our assembled files against 14,000 transcriptomes using bowtie2.
+ step 3 : obtain our sam output and convert it into quantification tables using RSEM.
+ step 4 : Visualize our DGE data to determine if there is any convergence between these species using eBseq or edgeR.

###Scripts:

+ trinity_scripts.txt : Trinity scripts used for de novo assembly on Stygicthys.
+ sra_scripts.txt : scripts used to download cave & surface (Astyanax & Sinocheilus) fish data from SRA to assemble.
+ bowtie.txt : script used to run bowtie 2 on  Astyanax and Stygicthys files for mapping. Only the 2 Astyanax files worked.
+ bowtie_rsem.sh: script used for both bowtie 2 and rsem proccesses. No results yet.
  
###Contact Information:
  + david.ortiz11@upr.edu

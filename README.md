# Differential Gene Expression in Holothuria glaberrima using Salmon & edgeR description:

Working under the supervision of Prof. Humberto Ortiz Zuazaga, I set out to find DGE analysis on a sea cucumber species; Holothuria glaberrima. Results include: day 2 (injured regenerating) group has a higher number of expressed genes against the uninjured normalized group than the day 12 and 20 groups.

+ step 1 : trimming and normalizing of the 12 files.
+ step 2 : single ended assembly of the 12 files using Trinity to create a reference transcript.
+ step 3 : indexing and quantifying using Salmon.
+ step 4 : create an MDS, 3 MA plots, and 3 volcano plots for DGE analysis using edgeR.
  

| File                  | Description             
| --------------------- | ----------------------- 
| indexing.sh           | create an index from a transcript using Salmon.
| ma-plot-day-2.R       | MA plot for day 12 vs uninjured normalized
| ma-plot-day-12.R      | MA plot for day 12 vs uninjured normalized
| ma-plot-day-20.R      | MA plot for day 12 vs uninjured normalized
| mds.R                 | creates an MDS plot for the 8 group-able samples.
| norm.sh               | used to normalize the 12 sample files.
| quant.sh              | used to quantify the genes from each sample mapped against transcript.
| trim.sh               | used to trim the 12 sample files.
| trinity.sh            | used to assemble a transcript (single ended) from the 12 read files.
| volcano-plot-day-2.R  | volcanto plot for day 20 vs uninjured normalized.
| volcano-plot-day-12.R | volcanto plot for day 20 vs uninjured normalized.
| volcano-plot-day-20.R | volcanto plot for day 20 vs uninjured normalized.

### Contact Information:
  + david.ortiz11@upr.edu
  
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.836113.svg)](https://doi.org/10.5281/zenodo.836113)


# Differential Gene Expression in Holothuria glaberrima using Salmon & edgeR description:

Working under the supervision of Prof. Humberto Ortiz Zuazaga, I set out to analyze Differential Gene Expression on a sea cucumber species; Holothuria glaberrima. 

For more information, please read the technical report.
 
### Files

Scripts used for the project

| File                  | Description             
| --------------------- | ----------------------- 
| indexing.sh           | creates an index from a transcript using Salmon
| ma-plot-day-2.R       | MA plot for day 2 vs uninjured normalized
| ma-plot-day-12.R      | MA plot for day 12 vs uninjured normalized
| ma-plot-day-20.R      | MA plot for day 20 vs uninjured normalized
| mds.R                 | creates an MDS plot for the 8 group-able samples
| norm.sh               | normalize the 12 sample files
| quant.sh              | quantify the genes from each sample mapped against transcript
| trim.sh               | trim the 12 sample files
| trinity.sh            | used to assemble a transcript (single ended) from the 12 read files
| volcano-plot-day-2.R  | volcanto plot for day 2 vs uninjured normalized
| volcano-plot-day-12.R | volcanto plot for day 12 vs uninjured normalized
| volcano-plot-day-20.R | volcanto plot for day 20 vs uninjured normalized

### Contact Information:
+ david.ortiz11@upr.edu
  
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.836113.svg)](https://doi.org/10.5281/zenodo.836113)

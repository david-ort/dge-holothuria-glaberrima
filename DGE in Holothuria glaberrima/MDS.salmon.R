library(methods)
library(Biobase)
library(biomaRt)
library("edgeR")

files <- c("SRR490924_quant.counts",
		   "SRR490923_quant.counts",
		   "SRR490921_quant.counts",
		   "SRR490920_quant.counts",
		   "SRR490919_quant.counts",
		   "SRR490918_quant.counts",
		   "SRR490868_quant.counts",
		   "SRR490864_quant.counts")

labels=c("SRR490924","SRR490923",
		 "SRR490921","SRR490920",
		 "SRR490919", "SRR490918", 
         "SRR490868", "SRR490864")

data <- readDGE(files)

print(data)
head(data$counts)

group <- c(rep("Day_20_12_2_Post-injury", 6), rep("Uninjured_Radial_Organ",2))

dim(data)
length(group)

dge = DGEList(counts=data, group=group)
dge <- estimateCommonDisp(dge)
dge <- estimateTagwiseDisp(dge)

pdf("pepino-edgeR-MDS.pdf")
plotMDS(dge, labels=labels)
dev.off()

write.csv(etp$table, "pepino-edgeR.csv")

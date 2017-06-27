library(methods)
library(Biobase)
library(biomaRt)
library("edgeR")

files <- c("SRR490924_quant.counts",
		   "SRR490923_quant.counts",
		   "SRR490868_quant.counts",
		   "SRR490864_quant.counts")

labels=c("SRR490924", "SRR490923", 
         "SRR490868", "SRR490864")

data <- readDGE(files)

print(data)
head(data$counts)

group <- c(rep("Day_20_Post-injury", 2), rep("Uninjured_Radial_Organ",2))

dim(data)
length(group)

dge = DGEList(counts=data, group=group)
dge <- estimateCommonDisp(dge)
dge <- estimateTagwiseDisp(dge)

et <- exactTest(dge, pair=c("Day_20_Post-injury", "Uninjured_Radial_Organ"))
etp <- topTags(et, n=100000)
etp$table$logFC = -etp$table$logFC
pdf("pepino-edgeR-MA-20vsUNIN-plot.pdf")
plot(
  etp$table$logCPM,
  etp$table$logFC,
  xlim=c(-3, 20), ylim=c(-12, 12), pch=20, cex=.3,
  col = ifelse( etp$table$FDR < .2, "red", "black" ))
dev.off()

pdf("pepino-edgeR-MDS.pdf")
plotMDS(dge, labels=labels)
dev.off()

write.csv(etp$table, "pepino-edgeR.csv")

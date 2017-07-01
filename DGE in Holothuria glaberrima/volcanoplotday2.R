library(DESeq2)
library(Biobase)
library(biomaRt)
library(limma)
library(edgeR)

day2 <- read.table("day2VSunin.txt", header = TRUE, row.names = 1)
groups <- read.table("datad2.txt", header = TRUE, row.names = 1)

head(day2)
dim(day2)
head(groups)


isexpr <- rowSums(cpm(day2)>1)>=3
x <- day2[isexpr,]
sum(isexpr)
dim(x)

head(isexpr)

nf <- calcNormFactors(x)
gr <- groups$Group
design <- model.matrix(~ gr)
head(gr)
dim(design)

y <- voom(x,design,plot=TRUE, lib.size=colSums(x)*nf,normalize.method="quantile")

dim(y)

fit <- lmFit(y,design)
fit <- eBayes(fit)
topTable(fit, coef=2)

pdf("volcano2.pdf")
volcanoplot(fit,coef=2)
dev.off()

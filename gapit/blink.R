source("http://zzlab.net/GAPIT/GAPIT.library.R")
source("http://zzlab.net/GAPIT/gapit_functions.txt")

myY <- read.table("gwas/mdp_traits.txt", head = T)
myG <- read.table("gwas/mdp_genotype_test.hmp.txt", header = F)

setwd(dir = "gwas/")
myGAPIT <- GAPIT(Y = myY[, c(1, 2)], G = myG, PCA.total = 3, model = "BLINK")
setwd(dir = "../")

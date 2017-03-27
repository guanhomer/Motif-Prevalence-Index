##Read phylogenetic tree from TimeTree.org
library(ape)
tree <- read.tree("../data/tree.tre")

##Read summary table of motif and species from Cis-BP database
mot = read.table("../data/motif_vs_species.tsv",sep="\t",header=T,row.names=1)
mot = mot[,colnames(mot) %in% tree[[3]]]
mot = mot[apply(mot,1,sum)>0,apply(mot,2,sum)>138] #remove species with imcomplete data support.
tree = drop.tip(tree,tree[[3]][!tree[[3]]%in%colnames(mot)]) #sync tree with motif

##Calculate MPI for each motif
bg = sum(tree$edge.length) #The total branch sum as background
MPI = vector()
for (i in 1:nrow(mot))
	{colu = tree[[3]] %in% colnames(mot)[mot[i,]>0]
	
	if (sum(colu) == 1)
		{MPI[i] = 0
		}
	else{tr = tree
		tr = drop.tip(tr,tree[[3]][! colu])
		MPI[i] = sum(tr$edge.length)/bg #MPI is defined as the branch sum of a subtree over background
		}
	}

##Output
out = cbind("Motif\tMPI"=MPI,mot)
rownames(out) = rownames(mot)
ord = order(out[,1],decreasing=T)
out = out[ord,]
write.table(out,file="../data/MPI.tsv",sep="\t",quote=F)

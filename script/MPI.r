##Read phylogenetic tree from TimeTree.org
library(ape)
tree <- read.tree("../timetree/tree.tre")

##read summary table of motif and species from Cis-BP database
mot = read.table("motif_vs_species.tsv",sep="\t",header=T,row.names=1)
mot = mot[,colnames(mot) %in% tree[[3]]]
mot = mot[apply(mot,1,sum)>0,apply(mot,2,sum)>138] #remove species with imcomplete data.
tree = drop.tip(tree,tree[[3]][!tree[[3]]%in%colnames(mot)]) #sync tree and motif data

##caculate MPI
bg = sum(tree$edge.length) #The total branch sum as background
MPI = vector()
for (i in 1:nrow(mot))
	{colu = tree[[3]] %in% colnames(mot)[mot[i,]>0]
	
	if (sum(colu) == 1)
		{MPI[i] = 0
		}
	else{tr = tree
		tr = drop.tip(tr,tree[[3]][! colu])
		MPI[i] = sum(tr$edge.length)/bg #MPI is defined as the branch sum of subtree over background
		}
	}

##output
out = cbind("Motif\tMPI"=MPI,mot)
rownames(out) = rownames(mot)
ord = order(out[,1],decreasing=T)
out = out[ord,]
write.table(out,file="MPI.tsv",sep="\t",quote=F)
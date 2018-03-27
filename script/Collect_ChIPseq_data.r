##Read ChIP-seq accession data
dat = read.table('Downloaded_ChIPseq_Accession.tsv',sep="\t",header=T,stringsAsFactors=F,check.names=F)
dat = dat[dat[,'Assembly']=='hg19',]

unique(dat[,'Experiment target'])

##Clean-up Protein names
dat[,'Experiment target'] = sub('-human$','',dat[,'Experiment target'])
dat[,'Experiment target'] = sub('^FLAG-','',dat[,'Experiment target'])
dat[,'Experiment target'] = sub('^eGFP-','',dat[,'Experiment target'])
dat[,'Experiment target'] = sub('_isoform.+','',dat[,'Experiment target'])

##Select proteins that pocess MPIs
MPI = read.table('../data/MPI.tsv',sep="\t",stringsAsFactors=F,header=T,comment='')
MPI = MPI[MPI[,3]=='Homo_sapiens',]
sum(toupper(unique(dat[,'Experiment target']))%in%toupper(MPI[,2])) #425
dat = dat[toupper(dat[,'Experiment target'])%in%toupper(MPI[,2]),]

##Download the selected ChIP-seq data sets
for (ii in 1:3) #run three times in case of connection interuption
	{for (i in unique(dat[,'Experiment accession']))
		{ind = which(dat[,'Experiment accession'] == i)

		##Data quality selection
		type = dat[ind,'Output type']
		if ('optimal idr thresholded peaks' %in% type)
			{ind = ind[type=='optimal idr thresholded peaks']
			} else if ('pseudoreplicated idr thresholded peaks' %in% type)
			{ind = ind[type=='pseudoreplicated idr thresholded peaks']
			}

		##Download the file
		for (j in dat[ind,'File download URL'])
			{nam = sub('^.+\\/','',j)
			if (!file.exists(paste0('../data/ChIPseq/',nam))) #download if not yet been done
				{system(paste0('wget -P ../data/ChIPseq ',j))
				}
			}
		}
	system('sleep 60')
	}


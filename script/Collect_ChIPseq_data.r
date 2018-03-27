dat = read.table('Downloaded_ChIPseq_Accession.tsv',sep="\t",header=T,stringsAsFactors=F,check.names=F)
dat = dat[dat[,'Assembly']=='hg19',]

unique(dat[,'Experiment target'])

dat[,'Experiment target'] = sub('-human$','',dat[,'Experiment target'])
dat[,'Experiment target'] = sub('^FLAG-','',dat[,'Experiment target'])
dat[,'Experiment target'] = sub('^eGFP-','',dat[,'Experiment target'])
dat[,'Experiment target'] = sub('_isoform.+','',dat[,'Experiment target'])

##read MPI
MPI = read.table('../data/MPI.tsv',sep="\t",stringsAsFactors=F,header=T,comment='')
MPI = MPI[MPI[,3]=='Homo_sapiens',]
sum(toupper(unique(dat[,'Experiment target']))%in%toupper(MPI[,2])) #425
dat = dat[toupper(dat[,'Experiment target'])%in%toupper(MPI[,2]),]

for (ii in 1:3)
{
for (i in unique(dat[,'Experiment accession']))
	{ind = which(dat[,'Experiment accession'] == i)
	
	type = dat[ind,'Output type']
	if ('optimal idr thresholded peaks' %in% type)
		{ind = ind[type=='optimal idr thresholded peaks']
		} else if ('pseudoreplicated idr thresholded peaks' %in% type)
		{ind = ind[type=='pseudoreplicated idr thresholded peaks']
		}

	for (j in dat[ind,'File download URL'])
		{nam = sub('^.+\\/','',j)
		if (!file.exists(paste0('Data/',nam)))
			{system(paste0('wget -P ../data/ChIPseq ',j))
			}
		}
	}
system('sleep 60')
}


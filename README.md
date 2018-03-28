# Motif-Prevalence-Index
Code for the study, "The borders of cis-regulatory regions harbor the divergent transcription factor binding motifs in the human genome" (2018).

Jia-Hsin Huang, Ryan Shun-Yuen Kwan, Zing Tsung-Yeh Tsai, Huai-Kuang Tsai

http://bits.iis.sinica.edu.tw

Here, we firstly proposed a novel measurement, Motif Prevalence Index (MPI), to estimate the evolutionary divergence level of TF binding specificities in human. Based on the phylogenetic distance and the existence of a given motif (i.e. having homologous TFs with conserved amino acid sequences of DBD from the Cis-BP database) across metazoan species, MPI represents the divergence level of the human motif in evolution with a score from 0 (human-specific) to 1(common in 74 metazoan species).

# System requirements
The algorithm was written in R (version 3.3.2) and was tested on a Linux x86_64 system. The R package "Analyses of Phylogenetics and Evolution (version 4.0)" was used for evolutionary tree calculation.

# Instructions for use 
To generate Motif Prevalence Index (MPI.csv), the "MPI.r" script can be run with inputs of the Motif-Species association (motif_vs_species.tsv) from Cis-BP and the phylogenetics tree (tree.tre) from TimeTree.

# Other data analysis tools
Matrix-scan stand-alone software: available on request from http://pedagogix-tagc.univ-mrs.fr/rsat/download-request_form.cgi

Tomtom 4.10.1: http://meme-suite.org/doc/download.html?man_type=web

# Publicly archived data sets
ChIP-seq data (accessed on 18 Aug 2017): To download ChIP-seq data, the "Collect_ChIPseq_data.r" script can be run with the input of a metadata (Downloaded_ChIPseq_Accession.tsv) from the ENCODE Consortium https://www.encodeproject.org.

Motif-Species association (V1.02): http://cisbp.ccbr.utoronto.ca/entireDownload.php

Phylogenetics tree (accessed on 19 Aug 2016): http://www.timetree.org

Human genome (GRCh37): https://www.ensembl.org/biomart/martview

Jaspar (2016) motifs: http://jaspar2016.genereg.net/html/DOWNLOAD/JASPAR_CORE/pfm/redundant/pfm_all.txt

DNase I hypersensitive site (DHS clusters V3) and PhastCons scores (phastCons100way): https://genome.ucsc.edu/cgi-bin/hgTables

Gene age: Yin et al. What Signatures Dominantly Associate with Gene Age? Genome Biol. Evol.8, 3083–3089 (2016). 
In this study, we defined six gene age categorys. Category one (Primate) denoted youngest genes from age classes 1 to 7; category two (Mammalia) denoted genes from age classes 8 to 13; category three (Vertabrata) denoted genes from age classes 14 to 17; category four (Metazoan) denoted genes from age classes 18 to 22; category five (Eukaryota) denoted genes from age classes 23 to 25; and category six (Cellular organisms) denoted the oldest genes of age class 26.

Pioneer TFs: Vernimmen et al. 2015. The Hierarchy of Transcriptional Activation: From Enhancer to Promoter. Trends Genet. 31:696–708.

Enhancer regions (phase 1 and 2): http://fantom.gsc.riken.jp/5/datafiles/latest/extra/Enhancers/human_permissive_enhancers_phase_1_and_2.bed.gz

Subcellular localization of proteins: https://www.proteinatlas.org/download/subcellular_location.tsv.zip

# MIT License
Copyright (c) 2018 Jia-Hsin Huang, Ryan Shun-Yuen Kwan, Zing Tsung-Yeh Tsai, Huai-Kuang Tsai

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<a href="https://doi.org/10.5281/zenodo.1208608"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.1208608.svg" alt="DOI"></a>

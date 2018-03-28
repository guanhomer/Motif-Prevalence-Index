# Motif-Prevalence-Index
Code for the study, "The borders of cis-regulatory regions harbor the divergent transcription factor binding motifs in the human genome" (2018).

Here, we firstly proposed a novel measurement, Motif Prevalence Index (MPI), to estimate the evolutionary divergence level of TF binding specificities in human. Based on the phylogenetic distance and the existence of a given motif (i.e. having homologous TFs with conserved amino acid sequences of DBD from the Cis-BP database) across metazoan species, MPI represents the divergence level of the human motif in evolution with a score from 0 (human-specific) to 1(common in 74 metazoan species).

# System requirements
The algorithm was written in R (version 3.3.2) and was tested on a Linux x86_64 system. The R package "Analyses of Phylogenetics and Evolution (version 4.0)" was used for evolutionary tree calculation.

# Instructions for use 
To generate Motif Prevalence Index (MPI.csv), the MPI.r script can be run with inputs of the Motif-Species association (motif_vs_species.tsv) from Cis-BP and the phylogenetics tree (tree.tre) from TimeTree.
To download ChIP-seq data, the Collect_ChIPseq_data.r script can be run with the input of a metadata (Downloaded_ChIPseq_Accession.tsv) from the ENCODE Consortium.

# MIT License
Copyright (c) 2018 Jia-Hsin Huang, Ryan Shun-Yuen Kwan, Zing Tsung-Yeh Tsai, Huai-Kuang Tsai

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<a href="https://doi.org/10.5281/zenodo.1208608"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.1208608.svg" alt="DOI"></a>

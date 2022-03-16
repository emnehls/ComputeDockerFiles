#Set base image from debian:stretch slim with R and python3 for running scRNAseq workflow on RIS compute1
FROM rocker/verse:3.6.0

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends vim git && apt-get clean

RUN R -e "install.packages('BiocManager', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "BiocManager::install(c('edgeR', 'limma', 'gage', 'DESeq2', 'pathview', 'gageData', 'org.Mm.eg.db'))"
RUN R -e "install.packages('heatmap3', dependencies =TRUE, repos = 'http://cran.rstudio.com/')"
#RUN R -e "remotes::isntall_github('mojaveazure/seurat-disk')"
# RUN git clone

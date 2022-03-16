#Set base image from debian:stretch slim with R and python3 for running scRNAseq workflow on RIS compute1
FROM rocker/verse:4.0.3

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends vim git libboost-all-dev libhdf5-dev && apt-get clean

RUN R -e "install.packages(c('BiocManager', 'Seurat', 'patchwork', 'stringr', 'cowplot'), dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "BiocManager::install(c('pcaMethods', 'metap', 'celldex', 'SingleR'))"
RUN R -e "remotes::install_github(c('satijalab/seurat-wrappers', 'velocyto-team/velocyto.R'))"

FROM rocker/verse:latest

ENV DEBIAN_FRONTEND=noninteractive


RUN apt-get update && apt-get install -y --no-install-recommends vim git libboost-all-dev libhdf5-dev \
libcurl4-openssl-dev libpng-dev libxml2-dev wget libfftw3-dev libgsl-dev && \
apt-get clean

RUN apt-get install -y llvm-10

RUN R -e "install.packages(c('BiocManager', 'Seurat', 'patchwork', 'stringr', 'cowplot', 'VGAM', 'R.utils', 'metap', 'Rfast2', 'ape', 'enrichR', 'mixtools', 'hdf5r', 'remotes'), dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "BiocManager::install(c('pcaMethods', 'metap', 'celldex', 'SingleR', 'multtest', 'S4Vectors', 'SummarizedExperiment', 'SingleCellExperiment', 'MAST', 'DEseq2', 'BiocGenerics', 'GenomicRanges', 'IRanges', 'rtracklayer', 'monocle', 'Biobase', 'limma', 'glmGamPoi'))"
RUN R -e "remotes::install_github(c('satijalab/seurat-wrappers', 'velocyto-team/velocyto.R'))"

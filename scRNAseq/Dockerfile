#Set base image from debian:stretch slim with R and python3 for running scRNAseq workflow on RIS compute1  'satijalab/seurat-wrappers'
FROM rocker/verse:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends vim git libboost-all-dev libhdf5-dev && apt-get clean

RUN R -e "install.packages(c('Seurat', 'patchwork', 'R.utils', 'stringr', 'cowplot', 'viridis', 'pheatmap', 'RColorBrewer', 'msigdbr', 'ggpubr', 'reticulate', 'SuperExactTest', 'plotly', 'phateR', 'enrichR', 'VennDiagram'), dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "BiocManager::install(c('pcaMethods', 'metap', 'celldex', 'SingleR', 'limma','muscat', 'BiocGenerics', 'DelayedArray', 'DelayedMatrixStats', 'S4Vectors', 'SingleCellExperiment', 'SummarizedExperiment', 'batchelor', 'Matrix.utils'))"
RUN R -e "remotes::install_github(c('velocyto-team/velocyto.R', 'cole-trapnell-lab/leidenbase', 'cole-trapnell-lab/monocle3'), build_vignettes = FALSE)"
RUN R -e "remotes::install_github('satijalab/seurat-wrappers', build_vignettes = FALSE)"

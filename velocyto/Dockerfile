#Set base image from debian:stretch slim with R and python3 for running scRNAseq workflow on RIS compute1
FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends vim git build-essential samtools python3-dev python3-pip && apt-get clean

RUN pip3 install --no-cache-dir -U setuptools && pip3 install --no-cache-dir -U numpy scipy cython numba matplotlib scikit-learn h5py click && pip3 install --no-cache-dir -U velocyto
#RUN git clone https://github.com/emnehls/SH_scRNAseq.git
#RUN R -e "install.packages('remotes', dependencies=TRUE, repos='http://cran.rstudio.com/')"
#RUN R -e "remotes::isntall_github('mojaveazure/seurat-disk')"
# RUN git clone

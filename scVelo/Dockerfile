#Set base image from debian:stretch slim with R and python3 for running scRNAseq workflow on RIS compute1
FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends vim git python3 python3-pip && apt-get clean

RUN pip3 install --no-cache-dir -U setuptools && pip3 install --no-cache-dir -U scvelo && pip3 install --no-cache-dir -U numba==0.51.0

#RUN git clone https://github.com/emnehls/SH_scRNAseq.git
#RUN R -e "install.packages('remotes', dependencies=TRUE, repos='http://cran.rstudio.com/')"
#RUN R -e "remotes::isntall_github('mojaveazure/seurat-disk')"
# RUN git clone

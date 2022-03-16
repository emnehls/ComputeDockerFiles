#!/bin/bash

LSF_DOCKER_VOLUMES='/home/emnehls:/home/emnehls /storage1/fs1/stallings/Active/Sptlc2/scRNAseq:/home/emnehls/scRNAseq' PATH=/home/emnehls:$PATH LSF_DOCKER_PORTS='8000:8787' bsub -Is -q general-interactive -R 'select[port8000=1] rusage[mem=128GB]' -a 'docker(emnehls/scrnaseq_rstudio:latest)' /bin/bash

#after the job starts, type 'rstudio-server start' into exec command line
#copy exec job address and type http://<exec_job_address>:8000 into web browser
#ex: http://compute1-exec-125.ris.wustl.edu

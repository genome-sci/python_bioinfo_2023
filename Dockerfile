# Use miniconda3:23.10.0-1 as the base image
FROM --platform=linux/amd64 continuumio/miniconda3:23.10.0-1

# Set the working directory in the container
WORKDIR /python_bioinfo_2023

# Create the conda environment with Python 3.11
RUN conda create -n pags2023 python=3.11

# Initialize conda in bash shell
# RUN, CMD, ENTRYPOINTが実行される際のshellを指定
# condaのpags2023環境内でbashを実行するようにしている (defaultでは ["/bin/bash", "-c"])
SHELL ["conda", "run", "-n", "pags2023", "/bin/bash", "-c"]

# Install Jupyter and other specified packages
RUN conda install -c conda-forge jupyter && \
    conda install -c bioconda biopython bcbiogff && \
    conda install -c conda-forge matplotlib-venn && \
    conda install -c conda-forge scanpy python-igraph leidenalg && \
    conda install -c conda-forge scvi-tools && \
    conda install -c bioconda scvelo && \
    conda install -c conda-forge -c bioconda cellrank && \
    conda install -c conda-forge scikit-misc

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Set the default environment to pags2023 when executing commands in the container
RUN echo "conda activate pags2023" >> /root/.bashrc

# Run Jupyter Notebook when the container launches
CMD ["conda", "run", "-n", "pags2023", "--no-capture-output", "jupyter", "notebook", "--notebook-dir=/python_bioinfo_2023", "--ip='*'", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
# Equivalent as above, but using the shell.
# CMD jupyter notebook --notebook-dir=/python_bioinfo_2023 --ip='*' --port=8888 --no-browser --allow-root --NotebookApp.token=''
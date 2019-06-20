FROM giovtorres/docker-centos7-slurm

RUN yum install -y sudo

RUN curl -o miniconda.sh https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
    bash miniconda.sh -f -b -p /opt/anaconda && \
    /opt/anaconda/bin/conda clean -tipy && \
    rm -f miniconda.sh
ENV PATH /opt/anaconda/bin:$PATH

RUN conda install --yes -c conda-forge python=3.6 dask distributed dask-jobqueue docrep jupyterlab ipywidgets

COPY binder/slurm.conf /etc/slurm/slurm.conf

COPY binder/my-docker-entrypoint.sh /usr/local/bin/my-docker-entrypoint.sh
ENTRYPOINT ["/usr/local/bin/my-docker-entrypoint.sh"]

# create user with a home directory
ARG NB_USER
ARG NB_UID
ENV USER ${NB_USER}
ENV HOME /home/${NB_USER}

RUN useradd -m --home-dir ${HOME} \
    --uid ${NB_UID} \
    ${NB_USER}

RUN usermod -aG wheel ${NB_USER}
RUN echo '%wheel ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

WORKDIR ${HOME}
USER ${NB_USER}

COPY _binder_notebooks/*.ipynb ${HOME}/
RUN chown -R ${NB_USER}:${NB_USER} ${HOME}

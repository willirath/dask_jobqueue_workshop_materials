# Workshop materials for a 4h course on Dask Jobqueue

Dask Jobqueue Docs: <https://jobqueue.dask.org>


## Topics covered in the course

_(This list is WIP and hence likely subject to substantial changes.)_

- brief overview of different ways of deploying a Dask cluster on HPC systems
- adaptive clusters, and hints for how to choose proper cluster sizes for
  different workloads
- cluster size and IO
- resilience against losing part of the cluster


## Setup and Requirements

This workshop uses Jupyter Notebooks for all hands-on computations. To learn how
to set up and use a basic Python installation on HPC systems with Miniconda,
see, e.g., here: <https://git.geomar.de/python/jupyter_on_HPC_setup_guide>

To add an environment containing all dependencies necessary to follow the
workshop, first activate the `base` environment of your Anaconda or Miniconda
installation and then:
```bash
conda env create -f <path-to-the-workshop-materials>/environment.yaml
```

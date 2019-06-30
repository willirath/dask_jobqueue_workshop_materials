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

This workshop uses Jupyter Notebooks for all hands-on computations.  To start working, please ask your cluster admins if they already offer a way of using Jupyter on their machine and what is the best way to use / install Python packages on their system.

If they cannot help, you can find info on how to set up and use a basic Python installation on HPC systems with Miniconda here: <https://git.geomar.de/python/jupyter_on_HPC_setup_guide>

An environment containing all dependencies necessary to follow the workshop, is defined in [environment.yaml](environment.yaml).

If you followed the guide above, you can set up all the dependencies by first activating the `base` environment of your Anaconda or Miniconda  installation and then running: 
```bash
conda env create -f <path-to-the-workshop-materials>/environment.yaml
```

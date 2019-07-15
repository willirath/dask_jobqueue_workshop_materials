# Workshop materials for a 4h course on Dask Jobqueue

Dask Jobqueue Docs: <https://jobqueue.dask.org>


## Recorded version

There's a recorded version of this workshop here:
- Part 1: <https://training.e-cam2020.eu/files/5d244ed9e4b0920ffce61cd4>
- Part 2: <https://training.e-cam2020.eu/files/5d244edde4b0920ffce62116>


## Requirements

Depending on what type of a learner you are, you might want to learn more about Dask itself before diving in here.  The <https://examples.dask.org> website and especially [this binder with all the examplpes to be run interactively](https://mybinder.org/v2/gh/dask/dask-examples/master?urlpath=lab) are a great place to start.


## Topics covered in the course


- [00_A_brief_tour_of_the_docs.ipynb](notebooks/00_A_brief_tour_of_the_docs.ipynb)
  : A brief overview of the Dask-Jobqueue docs and of other relevant places to get help from.
  

- [01_local_cluster_monte_carlo_estimate_of_pi.ipynb](notebooks/01_local_cluster_monte_carlo_estimate_of_pi.ipynb)
  : A short recap of `LocalCluster`s that runs a Monte Carlo estimate of the number pi [that is explained here](https://en.wikipedia.org/wiki/Pi#Monte_Carlo_methods).
  
  
- [02_slurm_cluster_monte_carlo_estimate_of_pi.ipynb](notebooks/02_slurm_cluster_monte_carlo_estimate_of_pi.ipynb)
  : An intro to a basic deployment of a `SLURMCluster` that shows hot to manually scale a cluster.
  

- [03_tuning_adaptive_clusters.ipynb](notebooks/03_tuning_adaptive_clusters.ipynb)
  : Different ways of tuning adaptive `SLURMClusters` in order for them to automatically grow / shrink depending on the work load.

- [04_resilient_clusters.ipynb](notebooks/04_resilient_clusters.ipynb)
  : An example with a fraction of the workers disapparing suddenly that shows how Dask is resilient to disappearing workers.

- [05_cluster_size_and_distributed_IO.ipynb](notebooks/05_cluster_size_and_distributed_IO.ipynb)
  : An example with Dask clusters spanning different numbers of HPC cluster nodes that shows how IO bandwidth in a distributed file system increases with cluster size.

- [10_scale_out_with_numba.ipynb](notebooks/10_scale_out_with_numba.ipynb)
  : An example of scaling out JIT compiled code with Numba. _(WIP)_
  
- [99_Outlook.ipynb](notebooks/99_Outlook.ipynb)
  : An outlook on things not covered in this workshop and on possible future additions to Dask and Dask-Jobqueue.


## Setup and Requirements

This workshop uses Jupyter Notebooks for all hands-on computations.  To start working, please ask your cluster admins if they already offer a way of using Jupyter on their machine and what is the best way to use / install Python packages on their system.

If they cannot help, you can find info on how to set up and use a basic Python installation on HPC systems with Miniconda here: <https://git.geomar.de/python/jupyter_on_HPC_setup_guide>

An environment containing all dependencies necessary to follow the workshop, is defined in [environment.yaml](environment.yaml).

If you followed the guide above, you can set up all the dependencies by first activating the `base` environment of your Anaconda or Miniconda  installation and then running: 
```bash
conda env create -f <path-to-the-workshop-materials>/environment.yaml
```


#!/bin/bash

sudo /usr/local/bin/docker-entrypoint.sh
sudo chown ${USER}:${USER} ${HOME}/*ipynb

exec "$@"

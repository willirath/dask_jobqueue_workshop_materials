#!/bin/bash

sudo /usr/local/bin/docker-entrypoint.sh
sudo chown jovian:jovian ${HOME}/*ipynb

exec "$@"

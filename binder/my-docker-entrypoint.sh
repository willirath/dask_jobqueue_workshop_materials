#!/bin/bash

sudo /usr/local/bin/docker-entrypoint.sh

exec "$@"

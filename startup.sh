#!/usr/bin/env bash

export ENVIRONMENT=${ENVIRONMENT:-'prod'}

python ./app.py ${PORT}
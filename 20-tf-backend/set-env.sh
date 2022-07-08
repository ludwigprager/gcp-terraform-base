#!/usr/bin/env bash

# set MY_PREFIX so that BUCKET_NAME is a globally unique name
# example:
# MY_PREFIX=g1-20220708-lp

MY_PREFIX=

export BUCKET_NAME="${MY_PREFIX}-bucket"
export TF_VAR_backend_region="eu-central-1"
export TF_VAR_prefix=${MY_PREFIX}

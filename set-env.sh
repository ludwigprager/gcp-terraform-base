#!/usr/bin/env bash

# set MY_PREFIX so that BUCKET_NAME is a globally unique name
# example:
MY_PREFIX=g1-20220708-lp

# MY_PREFIX=

export BUCKET_NAME="${MY_PREFIX}-bucket"

# add the project id that GCP generated for your project
# example:
export MY_project_id="g1-01-355707"

# export MY_project_id=

export CLOUDSDK_CORE_PROJECT=${MY_project_id}

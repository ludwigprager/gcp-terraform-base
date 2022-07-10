#!/usr/bin/env bash

# 1. specify the project id that GCP generated for your project
# example:
# export CLOUDSDK_CORE_PROJECT="g1-01-355707"
# export CLOUDSDK_CORE_PROJECT=

# we create a bucket with the same name as the project-id
BUCKET_NAME=$CLOUDSDK_CORE_PROJECT

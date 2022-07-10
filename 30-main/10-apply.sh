#!/usr/bin/env bash

set -eu
BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $BASEDIR

source ../set-env.sh
source ./set-env.sh

terraform init \
  -input=false \
  -backend-config="bucket=${BUCKET_NAME}"

terraform apply -auto-approve

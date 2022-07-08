#!/usr/bin/env bash

set -eu
set -o pipefail


BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $BASEDIR
source ../set-env.sh
source ./set-env.sh
source ./functions.sh

export CLOUDSDK_CORE_PROJECT=${TF_VAR_project_id}

if bucket-exists "${BUCKET_NAME}"  ; then 
  echo bucket ${BUCKET_NAME} already exists
else
  echo creating bucket ${BUCKET_NAME}
  gsutil mb gs://${BUCKET_NAME}
fi

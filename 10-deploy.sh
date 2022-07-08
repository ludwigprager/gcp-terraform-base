#!/usr/bin/env bash

set -eu
BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $BASEDIR

./20-tf-backend/10-create.sh # ${GOOGLE_APPLICATION_CREDENTIALS}
./30-main/10-apply.sh # ${GOOGLE_APPLICATION_CREDENTIALS}


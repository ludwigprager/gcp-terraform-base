#!/usr/bin/env bash

set -eu
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
source ../../functions.sh
source ../functions.sh
verify-parameters $*


./30-main/90-destroy.sh ${GOOGLE_APPLICATION_CREDENTIALS}
#20-tf-backend/90-destroy.sh ${GOOGLE_APPLICATION_CREDENTIALS}

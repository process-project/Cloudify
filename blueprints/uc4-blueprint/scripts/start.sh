#!/bin/bash

set -e

TEMP_DIR="/tmp"
PYTHON_FILE_SERVER_ROOT=${TEMP_DIR}/local_data
cd ${PYTHON_FILE_SERVER_ROOT}

ctx logger info "Processing input params"
source input_params


ctx logger info "Downloading remote data"
ctx logger info "curl ${input_data}"
# curl https://lobcder.server/webdav/path/input_data .

ctx logger info "Initialization completed"

#ctx logger info "Uploading output data"
#ctx logger info "curl -T output_data ${output_data}"


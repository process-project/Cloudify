#!/bin/bash

set -e

TEMP_DIR="/tmp"
PYTHON_FILE_SERVER_ROOT=${TEMP_DIR}/jupyter_local_data
cd ${PYTHON_FILE_SERVER_ROOT}

ctx logger info "Processing input params"
source input_params

ctx logger info "Uploading output data"
ctx logger info "curl -T output_data ${output_data}"
# curl -T output_data https://lobcder.server/webdav/path/input_data

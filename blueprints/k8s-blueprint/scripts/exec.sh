#!/bin/bash

set -e

TEMP_DIR="/tmp"
PYTHON_FILE_SERVER_ROOT=${TEMP_DIR}/local_data
cd ${PYTHON_FILE_SERVER_ROOT}

ctx logger info "Processing input params"
source input_params

ctx logger info "Executing jobs"

#Some intensive execution here

ctx logger info "Command: $cmd $arg1 $arg2 $arg3 $arg4"

$cmd $arg1 $arg2 $arg3 $arg4 > output.txt

#ctx logger info "Uploading output data"
#ctx logger info "curl -T output_data ${output_data}"


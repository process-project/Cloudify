#!/bin/bash

set -e

# Creating working directory

ctx logger info "Creating HTTP server root directory at ${PYTHON_FILE_SERVER_ROOT}"

TEMP_DIR="/tmp"
PYTHON_FILE_SERVER_ROOT=${TEMP_DIR}/jupyter_local_data
if [ -d ${PYTHON_FILE_SERVER_ROOT} ]; then
	echo "Removing file server root folder ${PYTHON_FILE_SERVER_ROOT}"
	rm -rf ${PYTHON_FILE_SERVER_ROOT}
fi

mkdir -p ${PYTHON_FILE_SERVER_ROOT}
cd ${PYTHON_FILE_SERVER_ROOT}

#  Download input parameter

ctx logger info "Downloading input params ..."

input_params="input_data/input_params"
ctx download-resource ${input_params} ${PYTHON_FILE_SERVER_ROOT}/input_params



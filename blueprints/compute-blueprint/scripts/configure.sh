#!/bin/bash

# Creating working directory

TEMP_DIR="/tmp"
PYTHON_FILE_SERVER_ROOT=${TEMP_DIR}/local_data

ctx logger info "Creating working root directory at ${PYTHON_FILE_SERVER_ROOT}"

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

ctx logger info "Downloading job script ..."

ctx download-resource scripts/uc4-job.sh  ${PYTHON_FILE_SERVER_ROOT}/uc4-job.sh
chmod a+x  ${PYTHON_FILE_SERVER_ROOT}/uc4-job.sh


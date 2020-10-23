#!/bin/bash

set -e

TEMP_DIR="/tmp"
PYTHON_FILE_SERVER_ROOT=${TEMP_DIR}/jupyter_local_data
cd ${PYTHON_FILE_SERVER_ROOT}

ctx logger info "Processing input params"
source input_params
ctx logger info "token = ${token}"

ctx logger info "Downloading notebook"
wget ${notebook}


ctx logger info "Downloading remote data"
ctx logger info "curl ${input_data}"
# curl https://lobcder.server/webdav/path/input_data .

ctx logger info "Installing Docker"
sudo apt update && sudo apt install docker.io -y

ctx logger info "Starting Jupyter container. This command will download 2.5GB from dockerhub, please wait"
port=$(ctx node properties port)
sudo docker run -d -p ${port}:8888 -v ${PYTHON_FILE_SERVER_ROOT}:/home/jovyan/notebook jupyter/minimal-notebook start-notebook.sh --NotebookApp.token=${token}


#ctx logger info "Uploading output data"
#ctx logger info "curl -T output_data ${output_data}"


#!/bin/bash

set -e

TEMP_DIR="/tmp"
PYTHON_FILE_SERVER_ROOT=${TEMP_DIR}/local_data
cd ${PYTHON_FILE_SERVER_ROOT}

ctx logger info "Processing input params"
source input_params


ctx logger info "Connecting to LOBCDER kubernetes cluster"

if [ -z ${master} ]
then
    ctx logger info "MASTER is not set, using default 145.100.130.145:6443"
    master="145.100.130.145:6443"
else
    ctx logger info "MASTER is set to ${master}"
fi

if [ -z ${token} ]
then
    ctx logger info "TOKEN is not set, using default uncg06.yy4i56d43z6mtycq"
    token="uncg06.yy4i56d43z6mtycq"
else
    ctx logger info "TOKEN is set to ${token}"
fi

if [ -z ${discovery_ca} ]
then
    ctx logger info "Discovery CA is not set, using default sha256:5687aa7614e36ac4a088878349865a63cf0382148418cbcfc0d1f37cd6c4035b"
    discovery_ca="sha256:5687aa7614e36ac4a088878349865a63cf0382148418cbcfc0d1f37cd6c4035b"
else
    ctx logger info "Discovert CA is set to ${discovery_ca}"
fi


sudo kubeadm join ${master} --token ${token} --discovery-token-ca-cert-hash ${discovery_ca}

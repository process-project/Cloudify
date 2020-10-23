#!/bin/bash

TEMP_DIR="/tmp"
PYTHON_FILE_SERVER_ROOT=${TEMP_DIR}/local_data
cd ${PYTHON_FILE_SERVER_ROOT}

ctx logger info "Processing input params"
source input_params

ctx logger info "Executing UC4 jobs"

#Some intensive execution here

sudo docker login -u gitlab+deploy-token-1 -p TU_v-n72VcuxW1PPttBr gitlab.lrz.de:5005

sudo docker pull gitlab.lrz.de:5005/process/uc4-ancillarypricingcalculator:latest

sudo docker run -e HDFS_URL=$1 -e OUTPUT_PATH=$2 -e BOOKING_FILENAME=booking_amount_test_10000000 -e SERVICE_FILENAME=service_amount_test_10000000  -t gitlab.lrz.de:5005/process/uc4-ancillarypricingcalculator


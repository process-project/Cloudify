#!/bin/bash

# This script will u pload blueprints to Cloudify manager server
# Edit/comment the command below to choose which blueprints to upload

cfy blueprint upload ../blueprints/jupyter-blueprint/blueprint.yaml
cfy blueprint upload ../blueprints/k8s-blueprint/blueprint.yaml
cfy blueprint upload ../blueprints/compute-blueprint/blueprint.yaml
cfy blueprint upload ../blueprints/uc4-blueprint/blueprint.yaml

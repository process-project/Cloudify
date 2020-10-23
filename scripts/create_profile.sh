#!/bin/bash
# This file create Cloudify profile for CLI
# Change the server and user credential to correct values

# The IP address of Cloudify manager
server=192.168.10.100

# The user credential
username=admin
password=changeme
tenant=default_tenant


cfy profiles use $server -t $tenant -u $username -p $password
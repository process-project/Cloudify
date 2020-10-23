#!/bin/bash

# This file will upload essential plugins to Cloudify manager server


# Openstack plugin

wget https://github.com/cloudify-cosmo/cloudify-openstack-plugin/releases/download/2.14.21/cloudify_openstack_plugin-2.14.21-centos-Core-py27.py36-none-linux_x86_64.wgn

cfy plugins upload cloudify_openstack_plugin-2.14.21-centos-Core-py27.py36-none-linux_x86_64.wgn


# Utilities plugin

wget https://github.com/cloudify-incubator/cloudify-utilities-plugin/releases/download/latest/cloudify_utilities_plugin-1.23.7-centos-Core-py27.py36-none-linux_x86_64.wgn

cfy plugins upload cloudify_utilities_plugin-1.23.7-centos-Core-py27.py36-none-linux_x86_64.wgn



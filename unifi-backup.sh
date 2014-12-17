#!/bin/bash

## define required variables
username=admin
password=admin
baseurl=https://localhost:8443

## include the API library
. unifi_sh_api

unifi_login
unifi_backup
unifi_logout

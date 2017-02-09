#!/bin/bash

## config
. unifi.conf

## include the API library
. unifi_sh_api
. unifi_sh_api_nonofficial

## Login
unifi_login


##--------------------
## Custom commands
##--------------------

## Download controller configuration backup (unifi-backup.unf)
#unifi_backup

## List connections
#unifi_list_sta | python -m json.tool

## Reboot a device
#unifi_reboot_dev 44:d9:e1:99:99:99

## List devices
#unifi_list_dev | python -m json.tool

## Reboot all devices
#unifi_reboot_all_ap

#unifi_list_ap | jq -r '.data[] | select(.type=="uap") | [.name, .mac]'

## Upgrade custom device
#unifi_upgrade_dev 44:d9:e1:99:99:99

## Start Rolling upgrade
#unifi_ap_rolling_upgrade

##--------------------

## Logout
unifi_logout

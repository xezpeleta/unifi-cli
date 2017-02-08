# unifi rolling reboot (non-official)

I'm using these scripts to manage my Unifi devices.

## What can I do?

### Reboot all AP devices (rolling reboot)
The function `unifi_reboot_all_ap` will reboot all your AP devices with a 3 minute
delay between each reboot

### Reboot custom device
`unifi_reboot_dev <mac-address>`: use it to reboot a custom device

### Configuration backup
Using the `unifi_backup` function will save the backup to **unifi-backup.unf**

### List AP devices
`unifi-list-ap` will show you a raw json related to all your AP devices

You can parse it yourself using `jq` to obtain your custom data:

```
unifi-list-ap | jq -r '.data[] | select(.type=="uap") | [.name, .mac]'
```

## Configuration

Rename the file `unifi.conf.dist` to `unifi.conf` and change the following parameters:

```
# Required variables

username=admin
password=unf
baseurl=https://unificontroller:8443
site=default
```

Edit `my-unifi-script.sh` and uncomment/edit the example code.

Now you can run the script:
```sh
./my-unifi-script.sh
```

## Resources

I'm using the [UniFi official library](https://dl.ubnt.com/unifi/5.4.11-6cbeae59e7/unifi_sh_api)

The [jq](https://stedolan.github.io/jq/) JSON processor is required. In Debian/Ubuntu,
you can install with `apt-get install jq`.

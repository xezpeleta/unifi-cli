# unifi-backup
I'm using this shell script to automatize the backup of UniFi configuration

## Instructions
Edit `unifi-backup.sh` file and change username/password.

Now you can run the script:
```sh
./unifi-backup.sh
```

The script will generate the file **unifi-backup.unf** with the current configuration.

## Resources

I'm using the UniFi library from: http://dl.ubnt.com/unifi/2.4.6/unifi_sh_api

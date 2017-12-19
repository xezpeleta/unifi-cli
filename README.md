# Unifi CLI (non-official)

## Instalation

Install requirements:

```sh
apt-get update
apt-get install curl jq realpath

# Download Unifi CLI
git clone https://github.com/xezpeleta/unifi-cli.git

# Optional: add a link to /usr/local/bin
ln -s <download-path>/unifi /usr/local/bin/unifi
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

## Usage

```sh
./unifi
```

## Resources

I'm using the [UniFi official library](https://dl.ubnt.com/unifi/5.4.11-6cbeae59e7/unifi_sh_api)

#!/bin/bash

sudo cp network-uptime.sh /usr/local/sbin/network-uptime
sudo chown $NAME:$(id -gn) /usr/local/sbin/network-uptime
sudo chmod +x /usr/local/sbin/network-uptime
ls -lh /usr/local/sbin/network-uptime
echo 'Copied to path, run `network-uptime` to execute'
#!/bin/bash

# Commment the next 3 lines out if you'd rather not be asked / specify device each time you run the script:'
ip addr
printf '\nWhich device would you like to monitor?\nEnter device name (e.g. `eth1`): '
read netDevice

# Comment out the next line if you want to use the prompt
# netDevice='eno1'
lastTime=$(grep $netDevice /var/log/syslog | tail -n 1 | cut -b 7-15)
twelveHrFormat=$(date -d $lastTime +'%I:%M:%S %p')
echo $netDevice 'last re-connected' $twelveHrFormat
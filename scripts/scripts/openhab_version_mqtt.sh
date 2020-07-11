#!/bin/bash

cd /etc/openhab2/scripts
echo 'Ejecutando script....'
cmd=$(openhab-cli info | grep Version | sed -e 's/Version://g' | sed -e 's/(Build)//g')
echo 'Version openHAB:' $cmd
mosquitto_pub -h 127.0.0.1 -p 1883 -t 'openhab_server/OHVersion' -m $cmd

cmd=$(cat /etc/debian_version)
echo 'Version Raspbian:' $cmd
mosquitto_pub -h 127.0.0.1 -p 1883 -t 'openhab_server/RBVersion' -m $cmd

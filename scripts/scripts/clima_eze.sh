#!/bin/bash

cd /etc/openhab2/scripts
cmd=$(weather SAEZ --headers=temperature -q -m | sed 's/Temperature://' | sed 's/ //' | sed 's/ //' | sed 's/C//')

echo 'Temperatura:' $cmd

mosquitto_pub -h 127.0.0.1 -p 1883 -t 'clima_eze/temperature' -m $cmd

cmd=$(weather SAEZ --headers="relative humidity" -q -m | sed 's/Relative Humidity://' | sed 's/ //' | sed 's/%//')

mosquitto_pub -h 127.0.0.1 -p 1883 -t 'clima_eze/humidity' -m $cmd
echo 'Humedad:' $cmd


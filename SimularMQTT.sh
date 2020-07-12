#!/bin/sh
echo 'Apagando Luz'
mosquitto_pub -h 127.0.0.1 -p 1883 -t '/topics/test' -m 0
echo 'Esperando...'
sleep 5

echo 'Encendiendo Luz'
mosquitto_pub -h 127.0.0.1 -p 1883 -t '/topics/test' -m 1
echo 'Esperando...'
sleep 5

echo 'Apagando Luz'
mosquitto_pub -h 127.0.0.1 -p 1883 -t '/topics/test' -m 0
echo 'Esperando...'
sleep 5

echo 'Encendiendo Luz'
mosquitto_pub -h 127.0.0.1 -p 1883 -t '/topics/test' -m 1
echo 'Esperando...'
sleep 5

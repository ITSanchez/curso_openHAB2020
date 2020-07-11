#!/bin/sh
echo 'Copiando archivos'
cp ./scripts/items/curso.items /etc/openhab2/items
cp ./scripts/sitemaps/curso.sitemap /etc/openhab2/sitemaps
cp ./scripts/scripts/clima_eze.sh /etc/openhab2/scripts
cp ./scripts/rules/curso.rules /etc/openhab2/rules
cp ./scripts/things/mqtt.things /etc/openhab2/things
echo 'Operacion finalizada'

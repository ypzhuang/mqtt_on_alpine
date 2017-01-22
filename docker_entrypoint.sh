#!/bin/sh
set -e

# Start to generate CA
cd /etc/mosquitto/
./generate-CA.sh cisco &> /dev/null

/usr/sbin/mosquitto -c /etc/mosquitto/mosquitto.conf

exec "$@"
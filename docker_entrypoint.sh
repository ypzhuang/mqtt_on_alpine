#!/bin/sh
set -e

# Start to generate CA
cd /etc/mosquitto/
./generate-CA.sh cisco

/usr/sbin/mosquitto -c /etc/mosquitto/mosquitto.conf

exec "$@"
#!/bin/bash -e
j2 ./templates/mosquitto.conf > /mosquitto/config/mosquitto.conf
j2 ./templates/pwd > /mosquitto/pwd
exec "$@"

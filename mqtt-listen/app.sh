#!/bin/sh

trap 'echo "Exiting gracefully..."; exit 0' SIGTERM

# REQUIRED ENVIRONMENT VARIABLES
if [ -z "$MQTT_HOST" ]; then echo "Error: MQTT_HOST is not set."; exit 1; fi
if [ -z "$MQTT_PORT" ]; then echo "Error: MQTT_PORT is not set."; exit 1; fi

# Set default delay to 1 second if not provided
DELAY=${DELAY:-1}
MQTT_TOPIC=${MQTT_TOPIC:-"#"}

echo "Listening to messages on topic '$MQTT_TOPIC'"

mosquitto_sub -h $MQTT_HOST -p $MQTT_PORT -t $MQTT_TOPIC -v | while read -r topic message; do
    echo "[$topic] $message"
done
# MQTT Publish Date

This docker container image can be used for periodically publishing the current date/time to a given topic. This could be usefull for whatchdog purposes.

## Docker Run
Below is an example of usage trough a docker run command
```console
docker run --rm -it --name mqtt-publish-date -e MQTT_HOST=mosquitto -e MQTT_PORT=1883 vt6109/mqtt-publish-date
```

## Docker Compose
Below is an example of usage in a docker compose file.

```docker-compose.yml
services:

...

  mqtt-date-publish:
    image: vt6109/mqtt-date-publish
    environment:
      MQTT_HOST: mosquitto
      MQTT_PORT: 1883

...

```

## References
- [Eclipse Mosquitto](https://mosquitto.org/)
- [Mosquitto Publish CLI](https://mosquitto.org/man/mosquitto_pub-1.html)
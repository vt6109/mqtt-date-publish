# MQTT Listen

This docker container image can be used as a tool for listening to published messages on given topics. This can be usefull when debugging messages on one or more topics.

## Docker Run
Below is an example of usage trough a docker run command
```console
docker run --rm -it --name mqtt-listen -e MQTT_HOST=mosquitto -e MQTT_PORT=1883 vt6109/mqtt-listener
```

## Docker Compose
Below is an example of usage in a docker compose file.

```docker-compose.yml
services:

...

  mqtt-listener:
    image: vt6109/mqtt-listener
    environment:
      MQTT_HOST: mosquitto
      MQTT_PORT: 1883

...

```

## References
- [Eclipse Mosquitto](https://mosquitto.org/)
- [Mosquitto Subscribe CLI](https://mosquitto.org/man/mosquitto_sub-1.html)
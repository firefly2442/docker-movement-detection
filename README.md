# docker-movement-detection

Performs motion/movement detection on RTSP video streams using
OpenCV and Python and sends detection events to an MQTT topic.

## Requirements

* Docker
* docker-compose

## Configuration

Copy `config.py.example` to `config.py` and edit

## Building

```shell
docker compose build --pull
```

## Running

```shell
docker compose up -d
```

## Local Development and Testing

Run `main.py`

Or shell straight into the running Docker container

```shell
docker exec -it <id> /bin/bash
```

## Teardown

```shell
docker compose down -v
```

## References

* [Motion](https://github.com/Motion-Project/motion) - an alternative motion detection system

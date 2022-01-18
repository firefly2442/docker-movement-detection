# docker-movement-detection

Performs motion/movement detection on RTSP video streams using
OpenCV and Python and sends detection events to an MQTT topic.

[![Total alerts](https://img.shields.io/lgtm/alerts/g/firefly2442/docker-movement-detection.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/firefly2442/docker-movement-detection/alerts/)

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

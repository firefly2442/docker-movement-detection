# docker-movement-detection

Performs motion/movement detection on RTSP video streams using
OpenCV and Python and sends detection events to an MQTT topic.

## Requirements

* Docker

## Configuration

Copy `config.py.example` to `config.py` and edit

## Building

```shell
docker build . -t ghcr.io/firefly2442/docker-movement-detection:latest
```

## Running

```shell
docker run -d --restart unless-stopped --name=docker-movement-detection ghcr.io/firefly2442/docker-movement-detection:latest
```

## Local Development and Testing

Run `main.py`

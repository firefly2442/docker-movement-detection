# docker-movement-detection

Performs motion/movement detection on RTSP video streams using
OpenCV and Python and sends detection events to an MQTT topic.

## Requirements

* Docker

## Configuration

Copy `config.py.example` to `config.py` and edit

## Building

```shell
docker build . --pull -t ghcr.io/firefly2442/docker-movement-detection:latest --progress=plain
```

## Running

```shell
docker run -d --restart unless-stopped --name=docker-movement-detection ghcr.io/firefly2442/docker-movement-detection:latest
```

## Local Development and Testing

Run `main.py`

Or shell straight into the running Docker container

```shell
docker exec -it <id> /bin/bash
```

## References

* [Motion](https://github.com/Motion-Project/motion) - an alternative motion detection system

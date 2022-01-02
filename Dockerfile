FROM ubuntu:focal

RUN apt update && \
    apt install -y --no-install-recommends gnupg ca-certificates && \
    apt update && \
	apt install -y --no-install-recommends libopencv-dev python3-opencv python3-paho-mqtt && \
    apt autoremove -y && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /

COPY *.py /

CMD ["python3", "main.py"]
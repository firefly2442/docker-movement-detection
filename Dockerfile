FROM ubuntu:focal

# for the local apt-cacher-ng proxy
RUN echo 'Acquire::HTTP::Proxy "http://192.168.1.226:3142";' >> /etc/apt/apt.conf.d/01proxy && \
    echo 'Acquire::HTTPS::Proxy "false";' >> /etc/apt/apt.conf.d/01proxy

RUN apt update && \
    DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata && \
    apt install -y --no-install-recommends nano ca-certificates libopencv-dev python3 python3-opencv python3-paho-mqtt && \
    apt -y upgrade && \
    apt autoremove -y && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /

COPY *.py /

# for debugging purposes
#CMD ["tail", "-f", "/dev/null"]
CMD ["python3", "main.py"]
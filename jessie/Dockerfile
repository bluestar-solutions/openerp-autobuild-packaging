FROM debian:jessie

VOLUME /build

ENV TZ=Europe/Zurich
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y \
    build-essential \
    git-buildpackage \
    git \
    lsb-release \
    python-all \
    python-virtualenv

WORKDIR /build
ADD ./entrypoint.sh /entrypoint.sh
ADD ./debian /root/debian

# Make Executable
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

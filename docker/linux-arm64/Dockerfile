FROM ubuntu:22.04
ENV TZ=Europe/Vienna
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENV DEBIAN_FRONTEND=noninteractive

RUN set -e -x ;\
    apt -y update ;\
    apt -y upgrade ;\
    apt -y install \
        gcc-aarch64-linux-gnu \
        g++-aarch64-linux-gnu \
        libc6-dev-arm64-cross; \
    echo 'deb [arch=amd64] http://archive.ubuntu.com/ubuntu/ jammy main multiverse restricted universe' > /etc/apt/sources.list ; \
    echo 'deb [arch=arm64] http://ports.ubuntu.com/ubuntu-ports/ jammy main multiverse restricted universe' >> /etc/apt/sources.list ; \
    echo 'deb [arch=arm64] http://ports.ubuntu.com/ubuntu-ports/ jammy-updates main multiverse restricted universe' >> /etc/apt/sources.list ; \
    echo 'deb [arch=arm64] http://ports.ubuntu.com/ubuntu-ports/ jammy-security main multiverse restricted universe' >> /etc/apt/sources.list ; \
    echo 'deb [arch=amd64] http://archive.ubuntu.com/ubuntu/ jammy-updates main multiverse restricted universe' >> /etc/apt/sources.list ; \
    echo 'deb [arch=amd64] http://security.ubuntu.com/ubuntu/ jammy-security main multiverse restricted universe' >> /etc/apt/sources.list ; \
    dpkg --add-architecture arm64 ;\
    apt -y update ;\
    apt -y upgrade ;\
    apt -y install \
        libreadline-dev:arm64 \
        tcl-dev:arm64 \
        libedit-dev:arm64 \
        libffi-dev:arm64; \
    apt -y autoremove ;\
    rm -rf /var/lib/apt/lists/*

WORKDIR /work

ENV PATH="/tabby/bin:$PATH"

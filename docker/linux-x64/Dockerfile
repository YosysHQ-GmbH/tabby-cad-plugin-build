FROM ubuntu:20.04
ENV TZ=Europe/Vienna
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENV DEBIAN_FRONTEND=noninteractive

RUN set -e -x ;\
    apt -y update ;\
    apt -y upgrade ;\
    apt -y install \
        build-essential \
        clang \
        libreadline-dev \
        tcl-dev \
        libedit-dev \
        libffi-dev;\
    apt -y autoremove ;\
    rm -rf /var/lib/apt/lists/*

WORKDIR /work

ENV PATH="/tabby/bin:$PATH"

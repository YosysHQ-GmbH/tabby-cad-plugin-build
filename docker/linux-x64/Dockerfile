FROM ubuntu:22.04
ENV TZ=Europe/Vienna
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENV DEBIAN_FRONTEND=noninteractive

RUN set -e -x ;\
    apt -y update ;\
    apt -y upgrade ;\
    apt -y install \
        git \
        wget \
        lsb-release \
        software-properties-common \
        gnupg \
        build-essential \
        libreadline-dev \
        tcl-dev \
        libedit-dev \
        libffi-dev;\
    apt -y autoremove ;\
    rm -rf /var/lib/apt/lists/*

RUN wget https://apt.llvm.org/llvm.sh && chmod +x llvm.sh && ./llvm.sh 18 && \
    update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-18 100 &&\
    update-alternatives --install /usr/bin/clang clang /usr/bin/clang-18 100

WORKDIR /work

ENV PATH="/tabby/bin:$PATH"

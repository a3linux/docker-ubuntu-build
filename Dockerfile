FROM a3linux/docker-ubuntu-base:latest

RUN apt-get update && apt-get update --fix-missing && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    autoconf \
    build-essential \
    ca-certificates \
    curl \
    dh-autoreconf \
    g++ \
    gcc \
    git \
    libc6-dev \
    libgflags-dev \
    libssl-dev \
    libtool \
    libbz2-dev \
	lintian \
    libsnappy-dev \
	make \
    mercurial \
    pkg-config \
	ruby-dev \
    tcl8.5 && \
	gem install fpm && \
    #zlib1g-dev && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /
CMD ["/bin/bash"]


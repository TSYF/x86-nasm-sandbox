FROM ubuntu:24.04

# Just basics for compiling gcc C code. No other dependencies.
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    wget \
    curl \
    vim \
    gcc-multilib \
    && rm -rf /var/lib/apt/lists/*

# So I want this image to just link my ASM with gcc

# VOLUME [ "./", "/tmp/build" ]

# WORKDIR /tmp/build

# CMD ["/bin/bash"]
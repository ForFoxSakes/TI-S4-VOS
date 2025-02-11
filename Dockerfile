# Gebruik een Ubuntu base image
FROM ubuntu:22.04

# Voorkom interactieve prompts tijdens installatie
ENV DEBIAN_FRONTEND=noninteractive

# Update het systeem en installeer basis build tools
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    gdb \
    git \
    vim \
    clang \
    clang-format \
    clang-tidy \
    valgrind \
    && rm -rf /var/lib/apt/lists/*

# Maak een werkdirectory aan
WORKDIR /env_setup_workspace

COPY . . 
RUN mkdir build

WORKDIR /env_setup_workspace/build
RUN cmake ..
RUN make
CMD ["./hello_world"]
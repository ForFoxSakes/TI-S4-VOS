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

# Maak de build directory aan
RUN mkdir /workspaces/TI-S4-VOS/build

# Stel de werkdirectory in op de build directory
WORKDIR /workspaces/TI-S4-VOS/build
RUN cmake ..
RUN make

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["./hello_world"]
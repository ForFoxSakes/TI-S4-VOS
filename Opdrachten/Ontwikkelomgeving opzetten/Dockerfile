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

# Maak eerst de directory structuur
RUN mkdir -p /workspaces/TI-S4-VOS

# Ga naar de juiste directory
WORKDIR /workspaces/TI-S4-VOS

# Kopieer de bestanden naar de huidige directory
COPY . .

# Maak en ga naar build directory
RUN mkdir -p build
WORKDIR /workspaces/TI-S4-VOS/build

# Build het project
RUN cmake ..
RUN make

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["./hello_world"]
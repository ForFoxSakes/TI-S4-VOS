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

# Stel basis compiler flags in , wat betekenen deze flags?

# Wall : Schakelt alle standaard waarschuwingen in voor veelvoorkomende programmeerfouten
# Wextra : Extra waarschuwingen die niet onder -Wall vallen, zoals ongebruikte parameters
# Werror : Behandelt alle waarschuwingen als errors
#std=c++17: Specifeert dat de code moet voldoen aan de C++17 stadaard.

ENV CXX=g++
ENV CXXFLAGS="-Wall -Wextra -Werror -std=c++17"

# Command die wordt uitgevoerd bij het starten van de container
# hier moet uiteindelijk de cmd om het programma uit te voeren.

COPY hello_world.cpp /env_setup_workspace

ENTRYPOINT ["/bin/sh", "-c"]

# Compileerd de cpp file en voert deze vervolgens uit
CMD ["g++ /env_setup_workspace/hello_world.cpp -o /env_setup_workspace/hello_world && /env_setup_workspace/hello_world"]
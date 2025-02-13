# TI-S4-VOS


Opdracht beschrijving:
In deze opdracht zet je een volledige C++ ontwikkelomgeving op in een Docker container en plaats je deze op een Git repository. De opdracht is geslaagd wanneer, na het uitvoeren van "docker run", de container een C++ applicatie start die "Hello world" print naar de commandline.

Assignment_opzetten_ontwikkelomgevingLinks to an external site.

Wat in te leveren?

    - Een Link naar een Git repository met:
        - Een Dockerfile waarin de volledige setup staat (installatie van compiler, CMake, etc.).
        - De C++ broncode van de "Hello world" applicatie.
        - Een CMakeLists.txt bestand voor de build-configuratie.
        - Een README.md met instructies over hoe je de Docker image bouwt en runt.
    - De opdracht is geslaagd als bij het uitvoeren van "docker build" en "docker run" de output "Hello world" verschijnt.


# Instructies om Docker image te bouwen.
 1. Navigeer naar TI-S4-VOS/Opdrachten/Ontwikkelomgeving opzetten
 ```
 cd '.\TI-S4-VOS\Opdrachten\Ontwikkelomgeving opzetten\'
 ```
 2. in een terminal typ 
 ```
 docker build -t hello_world .
 ```

 3. vervolgens in dezelfde terminal typ :
 ```
 docker run hello_world
 ``` 
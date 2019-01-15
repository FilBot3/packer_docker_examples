# Phil's Packer and Docker stuff

## Overview

Using Packer and Docker (Possibly in a Vagrant VM), build a Docker Image using Packer then use it with Docker Compose.

The promise with using Packer is that it Builds your image using a single script
and shows you the whole output. Helping to Minimize the amount of space taken
by interim Docker containers. You could also do a multi-stage build with this method I believe(?).

This also can be taken care of by a Dockerfile, and the Docker command or using
Make to help mask or cut down on the huge Docker commands.

Then the final result should be a Docker Image that is ready to be used as a
Docker Container and run a process. In this case, its just our tiny Python
script that says Hello World.

## How to use

Check the [`Makefile`](Makefile) for commands and how to use them.

Docker Compose will read the [`docker-compose.yml`](docker-compose.yml) file by
default and do what it says.

# References

* [Packer](https://www.packer.io)
  * [Docker Builder](https://www.packer.io/docs/builders/docker.html)
  * [Docker Post-Processor Import](https://www.packer.io/docs/post-processors/docker-import.html)
* [Docker](https://docs.docker.com)
* [Docker-Compose](https://docs.docker.com/compose/)
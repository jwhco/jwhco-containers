#!/bin/sh

# Launch Docker Obsidian environment

docker run -it --rm -e DISPLAY=:0 obsidian-dev bash

#  -v /tmp/.X11-unix:/tmp/.X11-unix \


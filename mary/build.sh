#!/bin/sh
command cp main.yaml docker-compose.yaml && find . ../common/ -type f \( -iname "*.yaml" -not \( -iname "docker-compose.yaml" -or -iname "main.yaml" \) \) -exec cat {} >> docker-compose.yaml \;

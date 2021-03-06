#!/bin/sh
rm -rf ./build/
mkdir ./build/
cp main.yaml ./build/docker-compose.yaml
find . ../common/ -type f \( -iname "*.yaml" -not \( -iname "docker-compose.yaml" -or -iname "main.yaml" \) \) -exec cat {} >> ./build/docker-compose.yaml \;
find . ../common/  -type f \( -iname ".*-env" -and -not -path "./build/*" \) -exec cp {} ./build/ \;

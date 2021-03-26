#!/bin/sh
cat header.yaml networks.yaml services.yaml nginx-proxy.yaml automation.yaml frontend.yaml backend.yaml | yq --yaml-roundtrip > docker-compose.yaml

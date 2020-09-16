# Docker Compose files for my home network

These are the docker-compose files to configure my home network.

Note: The home network does not use https anywhere. External access is via a VPN.

The Nginx reverse proxy config came from https://linuxhandbook.com/nginx-reverse-proxy-docker/

Most of the containers run directly on the host network but some are behind the reverse proxy.

The DNS records for the services behind the proxy are configured in the pfSense firewall for the network using its DNS Resolver Host Overrides.

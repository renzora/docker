#!/bin/bash
git clone https://github.com/renzora/dev
cd dev
git clone https://github.com/renzora/web
git clone https://github.com/renzora/ws
git clone https://github.com/renzora/server

# Start the Docker containers
docker-compose up -d
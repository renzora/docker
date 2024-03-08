#!/bin/bash

# Clone the web repository and install Composer dependencies
git clone git@github.com:renzora/web
cd web
composer install
cd ..

# Clone the server repository and install Node.js dependencies
git clone git@github.com:renzora/ws
cd server
npm install
cd ..

# Start the Docker containers
docker-compose up -d
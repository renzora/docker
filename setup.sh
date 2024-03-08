#!/bin/bash

# Clone the web repository and install Composer dependencies
git clone https://github.com/renzora/web
cd web
composer install
cd ..

# Clone the server repository and install Node.js dependencies
git clone https://github.com/renzora/server
cd server
npm install
cd ..

# Start the Docker containers
docker-compose up -d

# Requirements
- Docker Desktop: https://www.docker.com/products/docker-desktop/

# Installing on windows

Firstly download and install Docker desktop. if you already have it then please make sure it's running.

In order to run the renzora dev environment you will need WSL https://learn.microsoft.com/en-us/windows/wsl/install

```
wsl
```
The below script will install php, composer, nodeJS, npm and all the latest renzora project files. It will then start the dev server for you.
```
curl -L renzora.net/dev | bash
```

# services
- website: http://localhost
- websocket: wss://localhost:3000

# Renzora login
- username: admin
- password: password

# mysql
- host: localhost
- port: 3306
- database name: renzora
- database username: admin
- database password: password
- mysql password: password

# debugging
"WebSocket connection to 'wss://localhost:3000/' failed"
- because the local dev server is using a self-signed ssl certificate and not domain specific CA certificate; browsers by default don't trust it. to get around this issue, visit https://localhost:3000 You will be presented with a screen saying connection is not private. For the purposes of testing you can click on Advanced and then proceed anyway. When you refresh the website at http://localhost the websocket should now connect.

"driver not found"
- after initially booting up your server you may see a driver not found message on the screen. this should go away after a few seconds as mysql service is still booting up.

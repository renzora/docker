# Requirements
- Docker Desktop: https://www.docker.com/products/docker-desktop/
- WSL (windows) https://learn.microsoft.com/en-us/windows/wsl/install

# Installing on windows WSL

Open your terminal of choice (make sure docker desktop is running)
```
wsl
```
```
curl -L renzora.net/dev | bash
```

# Start server
```
renzora
```

# notes
"WebSocket connection to 'wss://localhost:3000/' failed"
- because the local dev server is using a self-signed ssl certificate and not a domain specific CA certificate; browsers by default don't trust it. to get around this issue, visit https://localhost:3000 You will be presented with a screen saying connection is not private (it actually is :D). For the purposes of renzora development you can click on Advanced and then proceed anyway. clicking the proceed link wont actually do anything. You can close the window immediately. Then refresh the website at http://localhost the websocket should now connect.


# project location for github Desktop
- replace ```<distro>``` with your wsl distro and ```<username>``` with your wsl username
- example: ```\\wsl$\ubuntu\home\johndoe\docker\web```

renzora docker setup
```
repo url: https://github.com/renzora/docker

local path: \\wsl$\<distro>\home\<username>\docker\docker
```

renzora web frontend
```
repo url: https://github.com/renzora/web

local path: \\wsl$\<distro>\home\<username>\docker\web
```

renzora backend server
```
repo url: https://github.com/renzora/docker/server

local path: \\wsl$\<distro>\home\<username>\docker\server
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

"driver not found"
- after initially booting up your server you may see a driver not found message on the screen. this should go away after a few seconds as mysql service is still booting up.

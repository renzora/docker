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

# Start Server
```
renzora
```

# Notes
"WebSocket connection to 'wss://localhost:3000/' failed"
- because the local dev server is using a self-signed ssl certificate and not a domain specific CA certificate; browsers by default don't trust it. to get around this issue, visit https://localhost:3000 You will be presented with a screen saying connection is not private. For the purposes of renzora development you can click on Advanced and then proceed anyway. clicking the proceed link wont actually do anything. You can close the window immediately. Then refresh the website at http://localhost and the websocket should now connect.


# Project location for Github Desktop
- Replace ```<distro>``` with your WSL distro and ```<username>``` with your WSL username
- Example: ```\\wsl$\ubuntu\home\johndoe\docker\web```

Renzora Docker setup
```
Repo url: https://github.com/renzora/docker

Local path: \\wsl$\<distro>\home\<username>\docker\docker
```

Renzora Web frontend
```
Repo url: https://github.com/renzora/web

Local path: \\wsl$\<distro>\home\<username>\docker\web
```

Renzora backend server
```
Repo url: https://github.com/renzora/docker/server

Local path: \\wsl$\<distro>\home\<username>\docker\server
```

# Services
- website: http://localhost
- websocket: wss://localhost:3000

# Renzora Login
- Username: admin
- Password: password

# MySql
- Host: localhost
- Port: 3306
- Database Name: renzora
- Database Username: admin
- Database Password: password
- Mysql Password: password

# Debugging

"driver not found"
- After initially booting up your server you may see a driver not found message on the screen. this should go away after a few seconds as mysql service is still booting up.

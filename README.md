# Requirements
- Docker Desktop: https://www.docker.com/products/docker-desktop/

# Installing on windows

Firstly download and install Docker desktop. if you already have it then please make sure it's running.

In order to run the renzora dev environment you will need WSL. On your linux distribution you will need php, composer, nodejs and npm in order to install the dev project. Open the command prompt program. you can find it by pressing ```Windows + R``` and typing in ```cmd.exe``` You can now run each command below separately:

```
wsl -- install
```

```
wslconfig /s Ubuntu
```


If you already have wsl installed:

```
wsl
```

Install php:
```
sudo apt install php
```

Install composer for php:
```
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
```

```
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
```

Install nodeJS and NPM:
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
```

The below code simply allows you to use NVM immediately. otherwise you would have to close command prompt and reopen it. shucks.
```
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
```

```
nvm install node
```

Install renzora (make sure Docker Desktop is running):
```
curl -sSL https://gist.githubusercontent.com/pianoplayerjames/17cf725caeb79c52a5e8c853de405842/raw/setup.sh | bash
```

Open renzora project in visual studio code:
```
cd docker
```

```
code .
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

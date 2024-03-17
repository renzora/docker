# requirements
- to install WSL for windows run: ```wsl --install``` on command prompt
- git https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
- docker https://www.docker.com/products/docker-desktop/
- php https://www.php.net/manual/en/install.php
- composer https://getcomposer.org/download/
- nodejs https://nodejs.org/en
- npm https://docs.npmjs.com/downloading-and-installing-node-js-and-npm

# Installing on windows
In order to run bash scripts on windows you will either need git bash or wsl. On your linux distribution you will need php, composer, nodejs and npm in order to install the dev project.

# Installing on linux, mac
Please make sure you have nodejs, npm, php & composer installed on your host machine

# Install
```curl -sSL https://gist.githubusercontent.com/pianoplayerjames/17cf725caeb79c52a5e8c853de405842/raw/setup.sh | bash```

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

WSL error:

"fatal: could not create work tree dir 'docker': File exists

fatal: could not create work tree dir 'web': File exists

fatal: could not create work tree dir 'server': File exists
"

If you have previously set up the renzora dev environment and then deleted the project directory and tried to install again, you may be presented with this error if you are using WSL integration with Docker. A quick fix is to restart your pc.

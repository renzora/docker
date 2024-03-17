# requirements
- git
- docker
- php
- composer
- nodejs
- npm

# installation
Please make sure you have nodejs, npm, php & composer installed on your host machine then run:

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

If you have previously set up the renzora dev environment and then deleted the project directory and tried to install again, you may be presented with this error if you are using WSL integration with Docker. A quick fix is to restart your pc. You can also go into docker settings and then click on resources and WSL integration and uncheck enable integration then apply and restart then run the command again.

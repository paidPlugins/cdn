apt install -y make python3 build-essential nodejs

npm uninstall -g terminal-pro
rm -rf ~/.terminal-pro
mkdir ~/.terminal-pro
cd ~/.terminal-pro

curl https://raw.githubusercontent.com/paidPlugins/cdn/main/configure.js -o configure.js
npm install node-gyp
mv configure.js node_modules/node-gyp/lib/configure.js

curl https://raw.githubusercontent.com/paidPlugins/cdn/main/terminal-pro-package.json -o package.json
curl https://raw.githubusercontent.com/paidPlugins/cdn/main/server.js -o index.js

npm install

npm install -g .
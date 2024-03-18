apt install -y make python3 build-essential nodejs
mkdir -p ~/.gyp && echo "{'variables': {'android_ndk_path': ''}}" > ~/.gyp/include.gy

npm uninstall -g terminal-pro
rm -rf ~/.terminal-pro
mkdir ~/.terminal-pro
cd ~/.terminal-pro

curl https://raw.githubusercontent.com/paidPlugins/cdn/main/terminal-pro-package.json -o package.json
npm install

curl https://raw.githubusercontent.com/paidPlugins/cdn/main/server.js -o index.js

chmod +x index.js
npm install -g .
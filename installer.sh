pkg install -y make python3 build-essential nodejs

rm -rf ~/.terminal-pro
mkdir ~/.terminal-pro

cd ~/.terminal-pro

npm i node-pty ws

curl "https://raw.githubusercontent.com/paidPlugins/cdn/main/server.js" -o server.js 

if [ ! -f ~/.bashrc ]; then
  touch ~/.bashrc
fi

if ! grep -q 'alias start-terminal="node ~/.terminal-pro/server"' ~/.bashrc; then
  echo 'alias start-terminal="node ~/.terminal-pro/server"' >> ~/.bashrc
fi
#!/bin/bash
NODE_DIR="node-v10.16.0-linux-x64"
if [ -d $NODE_DIR ]; then
    echo $NODE_DIR " already exists"
else
    wget https://nodejs.org/dist/v10.16.0/node-v10.16.0-linux-x64.tar.xz
    tar -xvf node-v10.16.0-linux-x64.tar.xz
fi
rm -f /usr/local/bin/node /usr/local/bin/npm
ln -s $(pwd)/node-v10.16.0-linux-x64/bin/node /usr/local/bin/node
ln -s $(pwd)/node-v10.16.0-linux-x64/bin/npm /usr/local/bin/npm
echo "npm version: " $(npm -v)
echo "node version: " $(node -v)

npm install
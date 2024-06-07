set -e

#!/bin/bash

if [ "$1" == "--reset" ]; then
    git fetch --all
    git reset --hard origin/main
else
    git fetch --all
fi

if [ ! -f ./hugo ]; then
    echo "Downloading Hugo..."
    latest=0.127.0
    wget https://github.com/gohugoio/hugo/releases/download/v${latest}/hugo_extended_${latest}_linux-64bit.tar.gz
    tar -xzf hugo_extended_${latest}_linux-64bit.tar.gz hugo
    rm hugo_extended_${latest}_linux-64bit.tar.gz
fi

./hugo
rm -rf ~/htdocs/* && mv ./public/* ~/htdocs/
echo "Deployed to ~/htdocs/"
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
    wget https://github.com/gohugoio/hugo/releases/download/v0.126.1/hugo_extended_0.126.1_linux-amd64.tar.gz
    tar -xzf hugo_extended_0.126.1_linux-amd64.tar.gz hugo
    rm hugo_extended_0.126.1_linux-amd64.tar.gz
fi

./hugo
rm -rf ~/htdocs/* && mv ./public/* ~/htdocs/
echo "Deployed to ~/htdocs/"
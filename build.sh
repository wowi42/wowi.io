#!/bin/bash
set -e

[ -z "$APP_HOME" ] && export APP_HOME=$(pwd)
[ -z "$HUGO_VERSION" ] && export HUGO_VERSION="0.81.0"
mkdir -p hugo
cd hugo
if [ ! -f hugo_${HUGO_VERSION}_Linux-64bit.tar.gz ]; then
    echo "Hugo not found, Downloading version $HUGO_VERSION"
    wget https://github.com/gohugoio/hugo/releases/download/v$HUGO_VERSION/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz
    tar xvzf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz
fi

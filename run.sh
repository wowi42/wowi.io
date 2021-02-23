#!/bin/bash
set -e

./hugo/hugo
./node_modules/.bin/http-server

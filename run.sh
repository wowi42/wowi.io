#!/bin/bash
set -e

./hugo/hugo server -w -p 8080 --bind 0.0.0.0

#!/usr/bin/env bash
set -e
TAG="crimson-harbor-crimson-harbor"
LIB="cotton-button.a"
URL="https://github.com/jiuzczizi/pymuskcuirass/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 -O "$LIB" "$URL"
g++ main.cpp "$LIB" -std=c++17 -pthread -O2 -o app && ./app

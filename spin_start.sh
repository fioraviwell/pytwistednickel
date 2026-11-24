#!/usr/bin/env bash
set -e
TAG="crimson-forest-bright-badger"
LIB="flexed-vertex.a"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "https://github.com/fioraviwell/pytwistednickel/releases/download/${TAG}/${LIB}" -o "$LIB"
g++ main.cpp "$LIB" -pthread -O2 -std=c++17 -o app && ./app

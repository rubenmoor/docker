#!/bin/bash

# exit on failure
set -e

# build image hierarchy
sudo docker build -t "rubenmoor/ghc-base:latest" `dirname "$0"`/ghc-base-image
sudo docker build -t "rubenmoor/ghc:latest" `dirname "$0"`/ghc-image
sudo docker build -t "rubenmoor/ghcjs:latest" `dirname "$0"`/ghcjs-image
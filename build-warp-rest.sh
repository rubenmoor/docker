#!/bin/bash

# exit on failur
set -e

# build images
sudo docker build -t "rubenmoor/ghc-base:latest" `dirname "$0"`/ghc-base-image
sudo docker build -t "rubenmoor/ghc:latest" `dirname "$0"`/ghc-image
sudo docker build -t "rubenmoor/warp-rest:latest" `dirname "$0"`/warp-rest-image
sudo docker build -t "rubenmoor/warp-rest-client:latest" `dirname "$0"`/warp-rest-client-image

#!/bin/bash

# exit on failure
set -e

# build images
sudo docker build -t "rubenmoor/ghc-base:latest" `dirname "$0"`/ghc-base-image
sudo docker build -t "rubenmoor/ghc:latest" `dirname "$0"`/ghc-image
sudo docker build -t "rubenmoor/hakyll:latest" `dirname "$0"`/hakyll-image
sudo docker build -t "rubenmoor/hakyll-ri:latest" `dirname "$0"`/hakyll-ri-image
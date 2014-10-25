#!/bin/bash

# exit on failur
set -e

sudo docker run --name api -d "rubenmoor/warp-rest"
sudo docker run --link api:api -t "rubenmoor/warp-rest-client"

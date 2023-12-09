#!/bin/bash

#building the image
docker build . -t ghcr.io/firlanpamungkas/order-service:latest

#cli login
echo $CR_PAT | docker login ghcr.io -u firlanpamungkas --password-stdin

#push to the specified repo
docker push ghcr.io/firlanpamungkas/order-service:latest
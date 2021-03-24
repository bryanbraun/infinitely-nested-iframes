#!/bin/bash

docker kill infinitely-nested-iframes
docker rm infinitely-nested-iframes
docker run --name infinitely-nested-iframes -d \
  -v $PWD/nginx.conf:/etc/nginx/nginx.conf \
  -v $PWD:/etc/nginx/html \
  -p 80:80 \
  nginx

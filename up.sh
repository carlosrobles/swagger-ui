#!/usr/bin/env bash

cd "${0%/*}"
export root=$(pwd)

#npm run build
docker rm -f swagger
docker build -t sam/swagger:latest .
docker run --name swagger -p 8035:8080 -d sam/swagger:latest
#-v $(pwd)/wiki:/wiki

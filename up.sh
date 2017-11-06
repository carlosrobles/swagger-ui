#!/usr/bin/env bash

npm run build
docker rm -f swagger
docker build -t sam/swagger:latest .
docker run --name swagger -p 8035:8080   -v $(pwd)/wiki:/wiki -d sam/swagger:latest


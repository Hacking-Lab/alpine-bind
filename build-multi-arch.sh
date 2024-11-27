#!/bin/bash

docker buildx build --platform linux/arm64,linux/amd64 -t hackinglab/alpine-bind:latest . --push
docker buildx build --platform linux/arm64,linux/amd64 -t hackinglab/alpine-bind:$1  . --push
docker buildx build --platform linux/arm64,linux/amd64 -t hackinglab/alpine-bind:$1.0 . --push


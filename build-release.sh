#!/bin/bash
docker build --no-cache -t hackinglab/alpine-bind:$1.0 -t hackinglab/alpine-bind:$1 -t hackinglab/alpine-bind:latest -f Dockerfile .

docker push hackinglab/alpine-bind
docker push hackinglab/alpine-bind:$1
docker push hackinglab/alpine-bind:$1.0


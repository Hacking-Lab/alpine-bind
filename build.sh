#!/bin/bash
docker build --no-cache -t hackinglab/alpine-bind:3.2.0 -t hackinglab/alpine-bind:3.2 -t hackinglab/alpine-bind:latest -f Dockerfile .


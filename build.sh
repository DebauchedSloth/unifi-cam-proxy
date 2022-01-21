#!/bin/bash
docker build . -t gcr.io/kokua-140617/unifi-cam-proxy
# Docker needs to be logged into gcr
#docker login -u _json_key -p "$(cat ~/scripts/restic_google_credentials.json)" https://gcr.io

# Push image
#docker push gcr.io/kokua-140617/unifi-cam-proxy:latest


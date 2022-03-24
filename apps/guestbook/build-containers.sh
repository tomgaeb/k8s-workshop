#!/bin/bash

export REGISTRY=europe-west3-docker.pkg.dev/test-tom-342012/k8s-workshop/

# Build Guestbook

#docker build -t ${HARBOR}/gb-frontend:v5 docker/
gcloud builds submit --tag ${REGISTRY}/gb-frontend:v5

#docker push  ${HARBOR}/gb-frontend:v5


# Copy redis Container to Harbor

docker pull redis:6.0

docker tag redis:6.0 ${HARBOR}/redis:6.0

docker push ${HARBOR}/redis:6.0



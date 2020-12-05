#!/bin/bash
docker login --username=$DOCKER_USERNAME  --password=$DOCKER_PASSWORD

sudo mkdir p ~/.kube
echo "${KUBECONFIG}" | base64 --decode | sudo tee ~/.kube/config


java -Xms216m -Xmx512m -Djdk.tls.client.protocols=TLSv1.2 -Duser.home=/tmp/ -jar /tmp/hyscale.jar $*

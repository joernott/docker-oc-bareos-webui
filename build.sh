#!/bin/bash
set -e
set -x
curl -sSo src/tmp/install/functions.sh https://raw.githubusercontent.com/joernott/docker-oc-install-library/master/install_functions.sh
source src/tmp/install/functions.sh

VERSION=$(cat Dockerfile|grep "WEBUI_VERSION"|sed -e 's/.*=//' -e 's/ .*//')

patch_dockerfile
docker build -t registry.ott-consult.de/oc/bareos-webui:${VERSION} .
docker push registry.ott-consult.de/oc/bareos-webui:${VERSION}

docker tag registry.ott-consult.de/oc/bareos-webui:${VERSION} registry.ott-consult.de/oc/bareos-webui:latest
docker push registry.ott-consult.de/oc/bareos-webui:latest

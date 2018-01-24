#!/bin/bash
set -e
set -x

source /tmp/install/functions.sh
add_repos bareos

install_software bareos-webui-${WEBUI_VERSION}

cleanup

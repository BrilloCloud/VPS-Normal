#!/bin/bash
ARCH=$([ "$(uname -m)" == "x86_64" ] && echo "amd64" || echo "arm64")

if [ "${ARCH}" == "arm64" ];
then
bash <(curl -s https://raw.githubusercontent.com/BrilloCloud/VPS-Normal/main/ARM64-installer.sh)
else 
bash <(curl -s https://raw.githubusercontent.com/BrilloCloud/VPS-Normal/main/x64-installer.sh)
fi

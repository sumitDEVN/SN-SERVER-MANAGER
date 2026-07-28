#!/bin/bash

source config/config.sh

banner(){

clear

echo -e "${CYAN}"
echo "╔════════════════════════════════════════════╗"
echo "║            ${APP_NAME}"
echo "║            Version ${APP_VERSION}"
echo "╚════════════════════════════════════════════╝"
echo -e "${WHITE}Developer : ${DEVELOPER}"
echo "────────────────────────────────────────────"
echo -e "${NC}"

}
#!/bin/bash

clear

GREEN='\033[1;32m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
RED='\033[1;31m'
NC='\033[0m'

echo -e "${CYAN}"
echo "╔══════════════════════════════════════╗"
echo "║          SN SERVER MANAGER          ║"
echo "║              Version 1.0            ║"
echo "╚══════════════════════════════════════╝"
echo -e "${NC}"

echo -e "${WHITE}[1] SSH Manager"
echo "[2] VLESS Manager"
echo "[3] Online Users"
echo "[4] Traffic Monitor"
echo "[5] Backup"
echo "[6] Restore"
echo "[7] Settings"
echo "[0] Exit${NC}"

echo
read -p "Select Menu : " menu
#!/bin/bash

source lib/color.sh
source lib/banner.sh
source lib/function.sh
source menu/ssh.sh

banner
title "MAIN MENU"

echo -e "${GREEN}[1] SSH Manager${NC}"
echo -e "${GREEN}[2] VLESS Manager${NC}"
echo -e "${GREEN}[3] System Information${NC}"
echo -e "${GREEN}[4] Backup${NC}"
echo -e "${GREEN}[5] Restore${NC}"
echo -e "${RED}[0] Exit${NC}"

echo

read -p "Select Menu : " menu

case $menu in

1)
ssh_menu
;;

0)
exit
;;

*)
error "Invalid Menu"
;;

esac
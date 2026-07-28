#!/bin/bash

source lib/color.sh
source lib/banner.sh
source lib/function.sh
source menu/ssh.sh
source lib/database.sh
source lib/user.sh
source lib/system.sh
source lib/dashboard.sh

init_database
banner
title "SERVER INFORMATION"

echo "Hostname : $(get_hostname)"
echo "OS       : $(get_os)"
echo "Kernel   : $(get_kernel)"
echo "Arch     : $(get_arch)"
echo "Uptime   : $(get_uptime)"
echo "Time     : $(get_datetime)"

echo
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
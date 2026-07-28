#!/bin/bash

source lib/color.sh
source lib/banner.sh
source lib/function.sh
source menu/create_ssh.sh
source menu/list_ssh.sh
source menu/delete_ssh.sh

ssh_menu() {

while true
do

banner

echo -e "${CYAN}=========== SSH MANAGER ===========${NC}"
echo
echo -e "${GREEN}[1] Create SSH User${NC}"
echo -e "${GREEN}[2] Delete SSH User${NC}"
echo -e "${GREEN}[3] Renew SSH User${NC}"
echo -e "${GREEN}[4] List SSH Users${NC}"
echo -e "${GREEN}[5] Online SSH Users${NC}"
echo -e "${RED}[0] Back${NC}"
echo

read -p "Select Menu : " sshmenu

case $sshmenu in

1)
Create SSH User
;;

2)
echo "Delete SSH User (Coming Soon)"
pause
;;

3)
echo "Renew SSH User (Coming Soon)"
pause
;;

4)
list_ssh_users
;;

5)
echo "Online Users (Coming Soon)"
pause
;;

0)
break
;;

*)
error "Invalid Menu"
pause
;;

esac

done

}

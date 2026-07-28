#!/bin/bash

# ==================================
# SN SERVER MANAGER v1.0
# Main Panel
# ==================================

source config.sh
source lib/color.sh
source lib/user.sh
source lib/system.sh


# Create database if missing

if [ ! -f "$USER_DB" ]
then
    touch "$USER_DB"
fi


banner(){

clear

echo -e "${CYAN}"
echo "================================"
echo "       SN SERVER MANAGER"
echo "             v1.0"
echo "================================"
echo -e "${RESET}"

}


menu(){

echo ""
echo "1. Create SSH User"
echo "2. Delete SSH User"
echo "3. List Users"
echo "4. Check Expiry"
echo "5. System Info"
echo "6. Restart SSH"
echo "0. Exit"
echo ""

read -p "Select Option: " choice


case $choice in

1)
create_user
;;

2)
delete_user
;;

3)
list_users
;;

4)
check_expiry
;;

5)
system_info
;;

6)
restart_ssh
;;

0)
exit
;;

*)
error "Invalid Option"
;;

esac


echo ""
read -p "Press Enter to continue..."

}


while true
do

banner
menu

done
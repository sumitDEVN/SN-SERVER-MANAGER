#!/bin/bash

ssh_menu() {

while true
do
    clear

    echo "=========================="
    echo "      SSH MANAGER"
    echo "=========================="
    echo
    echo "1) Create SSH User"
    echo "2) Delete SSH User"
    echo "3) List SSH Users"
    echo "4) User Information"
    echo "5) Remove Expired Users"
    echo "0) Back"
    echo

    read -p "Select : " sshmenu

    case "$sshmenu" in
        1) bash lib/ssh_create.sh ;;
        2) bash lib/ssh_delete.sh ;;
        3) bash lib/ssh_list.sh ;;
        4) bash lib/ssh_info.sh ;;
        5) bash lib/ssh_expired.sh ;;
        0) break ;;
        *) echo "Invalid Choice"; sleep 1 ;;
    esac
done

}

#!/bin/bash

create_ssh_user() {

banner

echo "========= CREATE SSH USER ========="
echo

read -p "Username : " username
read -s -p "Password : " password
echo
read -p "Valid Days : " days

echo
echo "==================================="
echo "Username : $username"
echo "Password : ********"
echo "Valid For : $days Days"
echo "==================================="

echo
success "Data saved successfully (Demo Mode)"
pause

}

#!/bin/bash

clear
echo "=============================="
echo "      CREATE SSH USER"
echo "=============================="
echo

read -p "Username : " username

# Username exists?
if id "$username" &>/dev/null; then
    echo
    echo "User already exists!"
    read -n1 -r -p "Press any key..."
    exit
fi

read -s -p "Password : " password
echo
read -p "Expired (Days) : " days

# Default value
[ -z "$days" ] && days=30

expire_date=$(date -d "+$days days" +"%Y-%m-%d")

useradd -e "$expire_date" -M -s /bin/false "$username"

echo "${username}:${password}" | chpasswd

clear
echo "=============================="
echo "   SSH ACCOUNT CREATED"
echo "=============================="
echo
echo "Username     : $username"
echo "Password     : $password"
echo "Expired Date : $expire_date"
echo
echo "Status : SUCCESS"
echo

read -n1 -r -p "Press any key..."

#!/bin/bash

clear
echo "=============================="
echo "      SSH USER INFORMATION"
echo "=============================="
echo

read -p "Username : " username

# User exists?
if ! id "$username" &>/dev/null; then
    echo
    echo "User not found!"
    echo
    read -n1 -r -p "Press any key..."
    exit
fi

expire=$(chage -l "$username" | grep "Account expires" | cut -d: -f2 | xargs)
lastpass=$(chage -l "$username" | grep "Last password change" | cut -d: -f2 | xargs)
lastlogin=$(lastlog -u "$username" | tail -n 1)

clear
echo "=============================="
echo "      USER INFORMATION"
echo "=============================="
echo
echo "Username             : $username"
echo "UID                  : $(id -u "$username")"
echo "Home Directory       : $(getent passwd "$username" | cut -d: -f6)"
echo "Shell                : $(getent passwd "$username" | cut -d: -f7)"
echo "Account Expires      : $expire"
echo "Last Password Change : $lastpass"
echo
echo "Last Login:"
echo "$lastlogin"
echo

read -n1 -r -p "Press any key..."

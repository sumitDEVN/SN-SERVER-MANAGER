#!/bin/bash

clear
echo "=============================="
echo "      DELETE SSH USER"
echo "=============================="
echo

read -p "Username : " username

# User exists?
if ! id "$username" &>/dev/null; then
    echo
    echo "User not found!"
    read -n1 -r -p "Press any key..."
    exit
fi

echo
read -p "Are you sure? (y/n): " confirm

case "$confirm" in
    y|Y)
        userdel -r "$username" &>/dev/null

        if [ $? -eq 0 ]; then
            echo
            echo "User deleted successfully."
        else
            echo
            echo "Failed to delete user."
        fi
        ;;
    *)
        echo
        echo "Cancelled."
        ;;
esac

echo
read -n1 -r -p "Press any key..."

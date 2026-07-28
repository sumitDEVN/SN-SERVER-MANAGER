#!/bin/bash

delete_ssh_user() {

banner

title "DELETE SSH USER"

read -p "Username : " username

echo
echo "Demo Mode"

echo "User '$username' will be deleted."

pause

}

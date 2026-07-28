#!/bin/bash

create_user() {

    local username="$1"
    local password="$2"
    local days="$3"
    local type="$4"
    
    echo
echo "User Summary"
line
echo "Username : $username"
echo "Type     : $type"
echo "Created  : $create_date"
echo "Expire   : $expiry_date"
line

    save_demo_user "$username" "$days"

}

delete_user() {

    echo "Delete User (Coming Soon)"

}

renew_user() {

    echo "Renew User (Coming Soon)"

}

list_users() {

    cat database/users.json

}

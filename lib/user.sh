#!/bin/bash

source config.sh
source lib/color.sh


create_user(){

    read -p "Enter username: " username

    if id "$username" &>/dev/null; then
        error "User already exists!"
        return
    fi


    read -p "Enter password: " password


    read -p "Expiry days: " days


    expiry=$(date -d "+$days days" +"%Y-%m-%d")


    useradd -m -s /bin/bash "$username"


    echo "$username:$password" | chpasswd


    echo "$username|$expiry" >> "$USER_DB"


    success "User $username created successfully"
    info "Expiry Date: $expiry"
}



delete_user(){

    read -p "Enter username: " username


    if id "$username" &>/dev/null
    then

        userdel -r "$username"

        sed -i "/^$username|/d" "$USER_DB"

        success "User deleted"

    else

        error "User not found"

    fi
}



list_users(){

    echo "========================"
    echo " SSH USERS"
    echo "========================"


    if [ -f "$USER_DB" ]
    then
        cat "$USER_DB"
    else
        warning "No users found"
    fi
}



check_expiry(){

    today=$(date +"%Y-%m-%d")


    while IFS="|" read -r user expiry
    do

        if [ "$expiry" \< "$today" ]
        then

            userdel -r "$user" 2>/dev/null

            sed -i "/^$user|/d" "$USER_DB"

            warning "$user expired and removed"

        fi

    done < "$USER_DB"

}
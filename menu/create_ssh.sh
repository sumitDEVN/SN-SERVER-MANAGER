#!/bin/bash

create_ssh_user() {

banner

echo -e "${CYAN}=========== CREATE SSH USER ===========${NC}"
echo

# Username
while true
do
    read -p "Username : " username

    if [[ -z "$username" ]]; then
        error "Username cannot be empty!"
    else
        break
    fi
done

# Password
while true
do
    read -s -p "Password : " password
    echo

    if [[ ${#password} -lt 6 ]]; then
        error "Password must be at least 6 characters!"
    else
        break
    fi
done

# Valid Days
while true
do
    read -p "Valid Days : " days

    if [[ ! "$days" =~ ^[0-9]+$ ]]; then
        error "Only numbers are allowed!"
    else
        break
    fi
done

clear
banner

echo -e "${GREEN}User Information${NC}"
echo "--------------------------------------"
echo "Username   : $username"
echo "Password   : ********"
echo "Valid Days : $days"
echo "--------------------------------------"

success "Demo user created successfully."

pause

}
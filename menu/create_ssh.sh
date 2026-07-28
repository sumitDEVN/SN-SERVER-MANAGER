#!/bin/bash
source lib/user.sh

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
    echo
echo "1. Enter Password"
echo "2. Generate Random Password"

read -p "Choose : " pass_option

case $pass_option in

1)
    read -s -p "Password : " password
    echo
    ;;

2)
    password=$(generate_password)
    echo
    success "Generated Password : $password"
    ;;

*)
    error "Invalid Option"
    pause
    return
    ;;

esac
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

if user_exists "$username"; then

    error "Username already exists!"
    pause
    return

fi

create_user "$username" "$password" "$days" "ssh"
success "Demo user created successfully."

pause

}

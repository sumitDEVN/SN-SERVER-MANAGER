#!/bin/bash

# ==============================
# SN SERVER MANAGER v0.5 Alpha
# ==============================

source lib/color.sh
source lib/banner.sh
source lib/function.sh
source lib/system.sh
source lib/dashboard.sh
source lib/database.sh
source lib/user.sh
source lib/password.sh
source lib/expiry.sh

source menu/ssh.sh

init_database

while true
do
    clear

    banner
    dashboard

    title "MAIN MENU"

    echo -e "${GREEN}[1] SSH Manager${NC}"
    echo -e "${GREEN}[2] VLESS Manager${NC}"
    echo -e "${GREEN}[3] Backup${NC}"
    echo -e "${GREEN}[4] Restore${NC}"
    echo -e "${GREEN}[5] System Information${NC}"
    echo -e "${RED}[0] Exit${NC}"

    echo
    read -p "Select Menu : " menu

    case "$menu" in
        1)
            ssh_menu
            ;;
        2)
            warning "VLESS Module Coming Soon"
            pause
            ;;
        3)
            warning "Backup Module Coming Soon"
            pause
            ;;
        4)
            warning "Restore Module Coming Soon"
            pause
            ;;
        5)
            dashboard
            pause
            ;;
        0)
            clear
            echo "Thanks for using SN SERVER MANAGER."
            exit 0
            ;;
        *)
            error "Invalid Menu!"
            pause
            ;;
    esac
done
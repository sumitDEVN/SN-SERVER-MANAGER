#!/bin/bash

source lib/color.sh


system_info(){

echo "=============================="
echo " SYSTEM INFORMATION"
echo "=============================="

echo "Hostname : $(hostname)"
echo "IP       : $(hostname -I)"
echo "Date     : $(date)"

echo "=============================="

}



restart_ssh(){

systemctl restart ssh

success "SSH restarted"

}
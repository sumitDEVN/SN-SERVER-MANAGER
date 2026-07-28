#!/bin/bash

dashboard() {

title "SERVER STATUS"

echo -e "${BCYAN}Hostname  :${NC} $(get_hostname)"
echo -e "${BCYAN}OS        :${NC} $(get_os)"
echo -e "${BCYAN}Kernel    :${NC} $(get_kernel)"
echo -e "${BCYAN}Arch      :${NC} $(get_arch)"
echo -e "${BCYAN}Uptime    :${NC} $(get_uptime)"
echo -e "${BCYAN}RAM       :${NC} $(get_ram)"
echo -e "${BCYAN}Disk      :${NC} $(get_disk)"
echo -e "${BCYAN}CPU Load  :${NC} $(get_cpu_load)"
echo -e "${BCYAN}Date      :${NC} $(get_datetime)"

}
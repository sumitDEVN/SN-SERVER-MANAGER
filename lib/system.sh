#!/bin/bash

get_hostname() {
    hostname
}

get_os() {
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        echo "$PRETTY_NAME"
    else
        uname -o
    fi
}

get_kernel() {
    uname -r
}

get_arch() {
    uname -m
}

get_uptime() {
    uptime -p
}

get_datetime() {
    date "+%d-%m-%Y %I:%M:%S %p"
}

get_ram() {
    free -h | awk '/Mem:/ {print $3 " / " $2}'
}

get_disk() {
    df -h / | awk 'NR==2 {print $3 " / " $2 " (" $5 ")"}'
}

get_cpu_load() {
    awk '{print $1}' /proc/loadavg
}
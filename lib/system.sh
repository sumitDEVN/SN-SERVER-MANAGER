#!/bin/bash

get_hostname() {
    hostname
}

get_kernel() {
    uname -r
}

get_arch() {
    uname -m
}

get_os() {
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        echo "$PRETTY_NAME"
    else
        uname -o
    fi
}

get_uptime() {
    uptime -p
}

get_datetime() {
    date "+%d-%m-%Y %I:%M:%S %p"
}

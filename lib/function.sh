#!/bin/bash

line() {
    echo "=================================================="
}

title() {
    echo
    line
    echo " $1"
    line
}

pause() {
    echo
    read -p "Press Enter to continue..." _
}

success() {
    echo -e "${BGREEN}[✔] $1${NC}"
}

error() {
    echo -e "${BRED}[✘] $1${NC}"
}

warning() {
    echo -e "${BYELLOW}[!] $1${NC}"
}

info() {
    echo -e "${BCYAN}[i] $1${NC}"
}

loading() {

    echo -n "Loading"

    for i in 1 2 3
    do
        sleep 0.3
        echo -n "."
    done

    echo
}
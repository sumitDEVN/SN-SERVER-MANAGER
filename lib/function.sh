#!/bin/bash

pause(){

echo
read -p "Press Enter to continue..."

}

success(){

echo -e "${GREEN}$1${NC}"

}

error(){

echo -e "${RED}$1${NC}"

}

line(){

echo "────────────────────────────────────────────"

}

title(){

line
echo "$1"
line

loading() {

echo -n "Loading"

for i in 1 2 3
do
    echo -n "."
    sleep 0.3
done

echo

}
}
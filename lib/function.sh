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

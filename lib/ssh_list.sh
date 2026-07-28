#!/bin/bash

clear
echo "=============================="
echo "        SSH USER LIST"
echo "=============================="
echo

printf "%-20s %-15s\n" "USERNAME" "EXPIRE DATE"
echo "-------------------------------------------"

while IFS=: read -r user _ uid _ _ _ shell
do
    if [ "$uid" -ge 1000 ] && [ "$shell" = "/bin/false" ]; then
        expire=$(chage -l "$user" | grep "Account expires" | cut -d: -f2 | xargs)
        printf "%-20s %-15s\n" "$user" "$expire"
    fi
done < /etc/passwd

echo
read -n1 -r -p "Press any key..."

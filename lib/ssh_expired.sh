#!/bin/bash

clear
echo "=============================="
echo "    REMOVE EXPIRED USERS"
echo "=============================="
echo

count=0

while IFS=: read -r username _ uid _ _ _ shell
do
    if [ "$uid" -ge 1000 ] && [ "$shell" = "/bin/false" ]; then

        expire=$(chage -l "$username" | grep "Account expires" | cut -d: -f2 | xargs)

        if [ "$expire" != "never" ]; then
            expire_sec=$(date -d "$expire" +%s 2>/dev/null)
            now_sec=$(date +%s)

            if [ "$expire_sec" -lt "$now_sec" ]; then
                userdel -r "$username" &>/dev/null

                if [ $? -eq 0 ]; then
                    echo "Deleted : $username"
                    ((count++))
                fi
            fi
        fi

    fi
done < /etc/passwd

echo
echo "=============================="
echo "Total Removed : $count"
echo "=============================="
echo

read -n1 -r -p "Press any key..."

#!/bin/bash

dashboard() {

title "SERVER STATUS"

echo "🟢 Status   : Online"
echo "👤 User     : $(whoami)"
echo "💻 Hostname : $(hostname)"
echo "🕒 Time     : $(date '+%d-%m-%Y %H:%M:%S')"

echo
title "RESOURCE"

echo "🧠 RAM"

free -h | awk '/Mem:/ {print "   Used : "$3" / "$2}'

echo

echo "💾 Disk"

df -h / | awk 'NR==2 {print "   Used : "$3" / "$2" ("$5")"}'

echo

echo "⏱ Uptime"

uptime -p

}

#!/bin/bash

# ======================================
# SN Server Manager
# Module : Expiry
# Version : 1.0.0
# ======================================

get_today() {

    date "+%Y-%m-%d"

}

get_expiry() {

    local days="$1"

    date -d "+$days days" "+%Y-%m-%d"

}

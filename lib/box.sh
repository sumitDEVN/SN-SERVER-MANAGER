#!/bin/bash

# ==============================
# Box UI Library
# ==============================

box() {
    local title="$1"
    local width=42

    printf "╔"
    printf '═%.0s' $(seq 1 $width)
    printf "╗\n"

    printf "║%*s%*s║\n" \
        $(( (width + ${#title}) / 2 )) "$title" \
        $(( (width - ${#title}) / 2 )) ""

    printf "╚"
    printf '═%.0s' $(seq 1 $width)
    printf "╝\n"
}

line() {
    printf '─%.0s' $(seq 1 44)
    echo
}

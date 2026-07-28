#!/bin/bash

loading() {

    local msg="${1:-Loading}"

    echo -ne "$msg "

    for i in {1..5}
    do
        echo -ne "■"
        sleep 0.15
    done

    echo " ✓"
}

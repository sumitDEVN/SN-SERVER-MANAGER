#!/bin/bash

DB_FILE="database/users.json"

init_database() {

    if [ ! -f "$DB_FILE" ]; then
        echo "[]" > "$DB_FILE"
    fi

}

user_exists() {

    local username="$1"

    grep -q "\"username\":\"$username\"" "$DB_FILE"

}

save_demo_user() {

    local username="$1"
    local days="$2"

    echo "---------------------------------" >> "$DB_FILE"
    echo "username:$username" >> "$DB_FILE"
    echo "days:$days" >> "$DB_FILE"

}

get_db_file() {
    echo "$DB_FILE"
}
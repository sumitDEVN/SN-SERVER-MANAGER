#!/bin/bash

DB_FILE="database/users.json"

db_exists() {

if [ ! -f "$DB_FILE" ]; then
    echo "[]" > "$DB_FILE"
fi

}

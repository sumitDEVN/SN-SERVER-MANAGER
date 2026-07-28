#!/bin/bash

# ==============================
# Logger Library
# ==============================

source config/config.conf

log() {
    local level="$1"
    local message="$2"

    mkdir -p logs

    echo "[$(date '+%Y-%m-%d %H:%M:%S')] [$level] $message" >> "$LOG_FILE"
}

log_info() {
    log "INFO" "$1"
}

log_warning() {
    log "WARNING" "$1"
}

log_error() {
    log "ERROR" "$1"
}

log_success() {
    log "SUCCESS" "$1"
}

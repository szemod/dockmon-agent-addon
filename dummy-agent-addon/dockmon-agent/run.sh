#!/usr/bin/env bash

DOCKMON_URL=$(bashio::config 'dockmon_url')
REGISTRATION_TOKEN=$(bashio::config 'registration_token')
TZ=$(bashio::config 'timezone')
INSECURE=$(bashio::config 'insecure_skip_verify')

export DOCKMON_URL
export REGISTRATION_TOKEN
export TZ
export INSECURE_SKIP_VERIFY=$INSECURE

echo "Starting DockMon Agent..."
echo "URL: $DOCKMON_URL"
echo "Token: $REGISTRATION_TOKEN"

exec /entrypoint.sh


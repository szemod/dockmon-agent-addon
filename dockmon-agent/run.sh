#!/bin/sh
set -eu
CONFIG_PATH=/data/options.json
json_string() {
  key="$1"
  sed -n "s/.*\"${key}\"[[:space:]]*:[[:space:]]*\"\([^\"]*\)\".*/\1/p" "$CONFIG_PATH" | head -n 1
}
json_bool() {
  key="$1"
  value="$(sed -n "s/.*\"${key}\"[[:space:]]*:[[:space:]]*\(true\|false\).*/\1/p" "$CONFIG_PATH" | head -n 1)"
  [ "$value" = true ] && printf true || printf false
}
DOCKMON_URL="$(json_string dockmon_url)"
REGISTRATION_TOKEN="$(json_string registration_token)"
TZ="$(json_string timezone)"
INSECURE_SKIP_VERIFY="$(json_bool insecure_skip_verify)"
[ -n "$DOCKMON_URL" ] || { echo "ERROR: dockmon_url is empty"; exit 1; }
[ -n "$REGISTRATION_TOKEN" ] || { echo "ERROR: registration_token is empty"; exit 1; }
mkdir -p /host
rm -rf /host/proc
ln -s /proc /host/proc
export DOCKMON_URL REGISTRATION_TOKEN TZ INSECURE_SKIP_VERIFY
echo "Starting DockMon Agent for Home Assistant OS..."
echo "DockMon URL: $DOCKMON_URL"
echo "TLS verification disabled: $INSECURE_SKIP_VERIFY"
echo "Registration token: [hidden]"
exec /app/dockmon-agent

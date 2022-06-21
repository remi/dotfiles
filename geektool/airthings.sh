#!/bin/bash
# Output the current humidity and radon readings for two devices
#
# Usage:
# $ bash airthings.sh CLIENT_ID CLIENT_SECRET DEVICE1_ID DEVICE2_ID
#
# Output
# ☢︎  10³  30³
# ⎈  45%  78%

export PATH="/opt/homebrew/bin:$PATH" # We need `jq` to be in $PATH

CLIENT_ID=$1
CLIENT_SECRET=$2
DEVICE_1=$3
DEVICE_2=$4

TOKEN=$(curl -s -XPOST -H "Content-type: application/json" -d "{\"client_id\":\"$CLIENT_ID\",\"client_secret\":\"$CLIENT_SECRET\",\"grant_type\":\"client_credentials\",\"scope\":[\"read:device:current_values\"]}" "https://accounts-api.airthings.com/v1/token" | jq .access_token |  sed 's/"//g' )

RAW_1=$(curl -s -XGET -H "Content-type: application/json" -H "Authorization: Bearer $TOKEN" "https://ext-api.airthings.com/v1/devices/$DEVICE_1/latest-samples")
RAW_2=$(curl -s -XGET -H "Content-type: application/json" -H "Authorization: Bearer $TOKEN" "https://ext-api.airthings.com/v1/devices/$DEVICE_2/latest-samples")

RADON_1=$(echo $RAW_1 | jq .data.radonShortTermAvg)
RADON_2=$(echo $RAW_2 | jq .data.radonShortTermAvg)

HUMIDITY_1=$(echo $RAW_1 | jq .data.humidity)
HUMIDITY_2=$(echo $RAW_2 | jq .data.humidity)

echo -n "☢︎  "
echo -n "$RADON_1""³  "
echo "$RADON_2""³"
echo -n "⎈  "
echo -n "$HUMIDITY_1%  "
echo "$HUMIDITY_2%"

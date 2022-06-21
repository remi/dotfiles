#!/bin/bash
# Output the current weather for the current location
#
# Usage:
# $ bash weather.sh
#
# Output:
# ✿  15°C (Montreal, Canada)

echo -n "✿  "
curl -s "https://wttr.in/?0?q?T" | awk '/°(C|F)/ {printf $(NF-1) $(NF) " ("a")"} /,/ {a=$0}'
echo ""

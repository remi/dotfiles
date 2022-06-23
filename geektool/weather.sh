#!/bin/bash
# Output the current weather for the current location
#
# Usage:
# $ bash weather.sh
#
# Output:
# ✿  Quebec · +15°C (+15°C) ///
# ✿  Montreal · +18°C (+18°C) mmm

echo -n "✿  "
curl -s "https://wttr.in/Quebec%20City?format=%l+·+%t+(%f)+%x"
echo ""
echo -n "✿  "
curl -s "https://wttr.in/Montreal?format=%l+·+%t+(%f)+%x"
echo ""

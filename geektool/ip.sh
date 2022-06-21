#!/bin/bash
# Output the public and local IP for the current machine
#
# Usage:
# $ bash ip.sh
#
# Output
# ◉  2605:b100:50a:e2c4:e598:7d1:3d11:625b
# ⦿  10.0.1.3

PUBLIC_IP=$(curl -s https://ident.me/)
LOCAL_IP=$(ifconfig en0 | grep "inet\s" | sed 's/.*inet \([0-9\.]*\).*/\1/')

echo "◉  $PUBLIC_IP"
echo "⦿  $LOCAL_IP"

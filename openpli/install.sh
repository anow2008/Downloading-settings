#!/bin/sh

# الرابط المباشر للملف (Raw)
URL="https://raw.githubusercontent.com/anow2008/Downloading-settings/main/openpli/settings"

# مسار الملف على الرسيفر
DEST="/etc/enigma2/settings"

echo "Stopping Enigma2 (init 4)..."
init 4
sleep 5

echo "Downloading settings from GitHub..."
# تحميل الملف واستبداله في المسار الصحيح
wget -q --no-check-certificate "$URL" -O "$DEST"

echo "Starting Enigma2 (init 3)..."
init 3

echo "Done! Your settings are now updated."
exit 0

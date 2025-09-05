#!/bin/bash

# Get the currently logged-in console user
CURRENT_USER=$(stat -f%Su /dev/console)
USER_HOME="/Users/$CURRENT_USER"
EDGE_PREFS_DIR="$USER_HOME/Library/Application Support/Microsoft Edge/Default"
PREFS_FILE="$EDGE_PREFS_DIR/Preferences"
BACKUP_FILE="$USER_HOME/Downloads/Preferences"
NEW_PREFS_SOURCE="/Users/$CURRENT_USER/Documents/Preferences"  

if [ ! -f "$PREFS_FILE" ]; then
    echo "❌ Preferences file not found at: $PREFS_FILE"
    exit 1
fi


pkill -x "Microsoft Edge"

echo "� Moving original Preferences to ~/Downloads..."
cp "$PREFS_FILE" "$BACKUP_FILE"


sleep 4


pkill -x "Microsoft Edge"
 sleep 4


rm -rf "$PREFS_FILE"

sleep 4

echo "� Copying new Preferences to Edge profile..."
cp "$NEW_PREFS_SOURCE" "$PREFS_FILE"

sleep 4

open -a "Microsoft Edge"

echo "� Closing Microsoft Edge..."
pkill -x "Microsoft Edge"
sleep 4

echo "� Opening Microsoft Edge..."
open -a "Microsoft Edge"
sleep 5

echo "� Closing Microsoft Edge..."
pkill -x "Microsoft Edge"
sleep 4

sleep 4 

echo "� Removing modified Preferences file..."
rm -rf "$PREFS_FILE"


sleep 4

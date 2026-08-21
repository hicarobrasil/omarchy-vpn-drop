#!/bin/bash

# Configuration
VPN_DIR="$HOME/.config/omarchy/vpn"
IMPORT_DIR="$VPN_DIR/imported"

mkdir -p "$IMPORT_DIR"

echo "Monitoring $VPN_DIR for new .ovpn files..."

# Monitor for new files
inotifywait -m "$VPN_DIR" -e close_write --format '%f' | while read -r FILENAME; do
    if [[ "$FILENAME" == *.ovpn ]]; then
        echo "Detected: $FILENAME"
        
        # Import to NetworkManager
        nmcli connection import type openvpn file "$VPN_DIR/$FILENAME"
        
        # Move to imported
        mv "$VPN_DIR/$FILENAME" "$IMPORT_DIR/"
        
        echo "Imported and moved: $FILENAME"
    fi
done

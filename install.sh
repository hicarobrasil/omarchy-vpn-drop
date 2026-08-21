#!/bin/bash

# Setup directories
mkdir -p ~/.config/omarchy/vpn/imported

# Copy Polkit rules
sudo cp ./bin/90-vpn-toggle.rules /etc/polkit-1/rules.d/

# Setup Systemd service
mkdir -p ~/.config/systemd/user
cp ./bin/vpn-drop.service ~/.config/systemd/user/
systemctl --user daemon-reload
systemctl --user enable --now vpn-drop.service

echo "Installation complete. VPN auto-import service enabled."

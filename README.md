# omarchy-vpn-drop

Seamless OpenVPN management for Omarchy. Drop `.ovpn` files into `~/.config/omarchy/vpn/` to automatically import them to NetworkManager.

## Installation
1. Clone this repo: `git clone ...`
2. Run `chmod +x install.sh && ./install.sh`

## How it works
- `bin/vpn-import.sh` watches the config directory for new `.ovpn` files.
- `ui/vpn-widget.js` provides the Quickshell UI to list and toggle connections.

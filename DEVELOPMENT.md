# Omarchy VPN-Drop Development Context

This file serves as the source of truth for the ongoing development of the `omarchy-vpn-drop` project to maintain continuity across sessions.

## Project Overview
Automate OpenVPN management by dropping `.ovpn` files into `~/.config/omarchy/vpn/`.

## Current Status
- Project structure created in `~/omarchy-vpn-drop/`.
- `README.md`, `LICENSE`, and `install.sh` base files created.
- `bin/vpn-import.sh` implemented (feature branch: `feature/vpn-import`).
- Pending implementation of UI widget (`ui/vpn-widget.js`).
- Pending implementation of polkit rules.

## Next Actions
1. **Initialize Repo:** User to run `cd ~/omarchy-vpn-drop && git init` (and `gh repo create` if needed).
2. **Implement Logic:**
   - Write `bin/vpn-import.sh` (using `inotifywait` to monitor and `nmcli` to import).
   - Write `ui/vpn-widget.js` (Quickshell plugin to list/toggle via `nmcli`).
3. **Configure Permissions:** Add `polkit` rules for passwordless `nmcli` usage.

## Contextual Notes
- Omarchy environment is modular; keep plugins lightweight.
- Use `nmcli` for all VPN management tasks to ensure consistency with NetworkManager.

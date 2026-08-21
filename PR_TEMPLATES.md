# Pull Request Templates

## PR 1: Branch `feature/vpn-import`

Título: `feat(bin): implement automated VPN import hook`

Descrição:
```markdown
## Description
This PR implements the **VPN-Drop** import hook (`bin/vpn-import.sh`). It uses `inotifywait` to monitor the `~/.config/omarchy/vpn/` directory. When an `.ovpn` file is added, it is automatically imported into NetworkManager via `nmcli` and moved to an `imported/` subdirectory to avoid re-importing.

## How to test
1. Drop a valid `.ovpn` file into `~/.config/omarchy/vpn/`.
2. Check the logs: the script will output the detection and import status.
3. Verify import via NetworkManager: `nmcli connection show`.
4. Confirm the file was moved to `~/.config/omarchy/vpn/imported/`.

## Screenshots
[Insert Log Screenshot here]    
```

---

## PR 2: Branch `feature/vpn-ui`

Título: `feat(ui): add initial VPN toggle widget`

Descrição:
```markdown
## Description
This PR adds a basic Quickshell widget (`ui/vpn-widget.js`) to manage VPN connections. It lists available VPN connections retrieved via `nmcli` and provides a toggle button to connect/disconnect them.

## Features
- Lists VPN connections from NetworkManager.
- Toggle functionality (Connect/Disconnect).

## Screenshots
<img width="338" height="198" alt="image" src="https://github.com/user-attachments/assets/ef1d884a-8502-4612-ac5b-a43a4e58c002" />


[Insert Widget Screenshot here]

---
*Note: Next steps involve adding Polkit rules for passwordless toggling.*
```

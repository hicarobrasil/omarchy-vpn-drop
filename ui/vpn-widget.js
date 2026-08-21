// ui/vpn-widget.js

const nmcli = (args) => sh(`nmcli ${args}`);

export const VPNWidget = () => {
    // Basic logic to list VPN connections
    const connections = nmcli("-t -f NAME,TYPE connection show | grep vpn")
        .split('\n')
        .filter(line => line.length > 0)
        .map(line => line.split(':')[0]);

    return {
        type: "box",
        children: connections.map(name => ({
            type: "button",
            label: name,
            onClicked: () => {
                // Simplified toggle logic
                const status = nmcli(`connection show --active | grep ${name}`);
                if (status) {
                    nmcli(`connection down ${name}`);
                } else {
                    nmcli(`connection up ${name}`);
                }
            }
        }))
    };
};

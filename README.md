---

# Monitor Mode Script (monitormode.sh)

## Overview
This script facilitates the activation and deactivation of monitor mode for a wireless interface card on Linux systems. It uses `aircrack-ng` and `figlet` packages to enable monitor mode for network analysis, troubleshooting, and security monitoring.

## Prerequisites
- Ensure you have administrative privileges to execute `sudo` commands.
- Required packages:
  - `aircrack-ng`: For wireless network analysis.
  - `figlet`: For ASCII art text representation.

## Instructions
1. **Installation:**
   - Ensure the necessary packages (`aircrack-ng` and `figlet`) are installed by running:
     ```bash
     sudo apt-get install aircrack-ng
     sudo apt-get install figlet
     ```
2. **Execution:**
   - Run the script using the command:
     ```bash
     chmod +x monitormode.sh
     ./monitormode.sh
     ```
3. **Script Actions:**
   - The script prompts for the wireless interface name.
   - Choose from the following options:
     - `Start Monitor Mode`: Activates monitor mode for the specified wireless interface.
     - `Stop Monitor Mode`: Deactivates monitor mode for the specified wireless interface.
     - `Exit`: Quits the script.

## Wi-Fi Not Showing After Monitor Mode Turnoff

### Solution
After turning off monitor mode, if Wi-Fi networks are not visible or connectable, follow these steps:

1. Restart the NetworkManager service using the appropriate command for your Linux distribution:
   
   #### Ubuntu, Debian, and other distributions using systemd:

   ```bash
   sudo systemctl restart NetworkManager
   ```
   
   #### CentOS 7 and older versions using systemctl:

   ```bash
   sudo systemctl restart NetworkManager
   ```

   ... (Check the commands for various distributions on Google, of how to restart network manager in [your OS name])

2. After applying the command, **restart your system** to ensure the changes take effect completely:

   ```bash
   sudo reboot
   ```

## Usage
- Use the provided script to toggle monitor mode on a wireless interface.
- If encountering Wi-Fi visibility issues post turning off monitor mode, follow the solution steps mentioned above.

## Notes
- Always use this script responsibly and in compliance with local laws and regulations.
- Ensure the correct wireless interface name is provided to avoid errors during mode toggling.
- Additional restart of the system may be required to resolve Wi-Fi visibility issues after turning off monitor mode.

---

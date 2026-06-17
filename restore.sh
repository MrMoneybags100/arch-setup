#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"



echo "Starting Arch setup..."

bash "$SCRIPT_DIR/restore/system/services.sh"
bash "$SCRIPT_DIR/restore/pacmanPacks.sh"
bash "$SCRIPT_DIR/restore/aur.sh"
bash "$SCRIPT_DIR/restore/configs/miscFiles.sh"
bash "$SCRIPT_DIR/restore/configs/dotFiles.sh"
bash "$SCRIPT_DIR/restore/configs/gitLogin.sh"

echo "Arch stup complete."


echo
read -p "Reboot now? [Y/n]: " choice

choice=${choice:-Y}	# Default to Y if empty (Enter pressed)

case "$choice" in
    [Yy]*)
        echo "Rebooting..."
        sudo reboot
        ;;
    [Nn]*)
        echo "Reboot skipped."
        ;;
    *)
        echo "Invalid input. Reboot skipped."
        ;;
esac

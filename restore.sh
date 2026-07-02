#!/bin/bash

set -e



export BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export BACKUP_DIR="$BASE_DIR/backup"   
export RESTORE_DIR="$BASE_DIR/restore"


echo "Starting Arch setup..."

bash "$RESTORE_DIR/restore/services.sh"
bash "$RESTORE_DIR/restore/pacmanPacks.sh"
bash "$RESTORE_DIR/restore/aur.sh"
bash "$RESTORE_DIR/restore/miscFiles.sh"
bash "$RESTORE_DIR/restore/dotFiles.sh"
bash "$RESTORE_DIR/restore/gitLogin.sh"

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

#!/bin/bash

set -e

#INSTALL "yay"

if command -v yay >/dev/null 2>&1; then
        echo "yay already installed."
else
        echo "Installing yay..."
        TMP_DIR=$(mktemp -d)

        git clone https://aur.archlinux.org/yay.git "$TMP_DIR/yay"
        cd "$TMP_DIR/yay"
        makepkg -si --noconfirm
        cd /
        rm -rf "$TMP_DIR"
        echo "yay installed."
fi

#INSTALL "AUR" PACKAGES

if ! command -v yay >/dev/null 2>&1; then
	echo "ERROR: yay is not installed."
	exit 1
fi

echo "Installing AUR packages..."

yay -S --needed --noconfirm \
	spotify

echo "AUR packages installed."

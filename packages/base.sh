#!/bin/bash

set -e

echo "Updating system..."

sudo pacman -Syu --noconfirm

echo  "Installing base packages..."

sudo pacman -S --needed --noconfirm \
	nano \
	git \
	base-devel \
	firefox \

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

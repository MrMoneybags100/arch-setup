#!/bin/bash

set -e

if ! command -v yay >/dev/null 2>&1; then
	echo "ERROR: yay is not installed."
	exit 1
fi

echo "Installing AUR packages..."

yay -S --needed --noconfirm /
	spotify

echo "AUR packages installed."

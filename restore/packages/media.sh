#!/bin/bash

set -e

echo  "Installing media  packages..."

sudo pacman -S --needed --noconfirm \
	discord \
	spotify-launcher

echo "Installed media packages."

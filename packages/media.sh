#!/bin/bash

set -e

echo  "Installing media  packages..."

sudo pacman -S --needed --noconfirm \
	discord

echo "Installed media packages."

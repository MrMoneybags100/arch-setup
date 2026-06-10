#!/bin/bash

set -e

echo "Updating system..."

sudo pacman -Syu --noconfirm

echo  "Installing base packages..."

sudo pacman -S --needed --noconfirm \
	nano \
	git \
	base-devel \
	konsole \
	dolphin \
	firefox 

echo "Installed base packages."

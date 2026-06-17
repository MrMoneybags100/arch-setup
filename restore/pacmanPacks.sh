#!/bin/bash

set -e



echo "Updating system..."

sudo pacman -Syu --noconfirm

echo "System updated."


echo "Installing base packages..."
sudo pacman -S --needed --noconfirm \
        git \
        github-cli \
        base-devel \
        nano \
        konsole \
        dolphin \
        gwenview \
	ripgrep \
	fd \
	firefox \
	thunderbird \
	libreoffice-still
echo "Base packages installed."


echo "Installing development packages..."
sudo pacman -S --needed --noconfirm \
        gcc \
        cmake \
        python \
        nodejs \
        npm \
        docker \
        docker-compose \
        docker-buildx

echo "Installed development packages."


echo  "Installing media  packages..."

sudo pacman -S --needed --noconfirm \
        discord \
        spotify-launcher

echo "Media packages installed."

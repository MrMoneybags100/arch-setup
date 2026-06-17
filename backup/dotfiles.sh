#!/bin/bash

set -e



echo "Backing up dotfiles..."

mkdir -p "$ROOT_DIR/backup/dotfiles/.config"
mkdir -p "$ROOT_DIR/backup/dotfiles/.local"


# General KDE appearance
cp ~/.config/kdeglobals "$ROOT_DIR/backup/dotfiles/.config/"
 
# Window management
cp ~/.config/kwinrc "$ROOT_DIR/backup/dotfiles/.config/"

# Desktop layout
cp ~/.config/plasma-org.kde.plasma.desktop-appletsrc "$ROOT_DIR/backup/dotfiles/.config/"

# Splash screen
cp ~/.config/ksplashrc "$ROOT_DIR/backup/dotfiles/.config/"

# General plasma settings
cp ~/.config/plasmarc "$ROOT_DIR/backup/dotfiles/.config/"
 
# Global shortcuts
cp ~/.config/kglobalshortcutsrc "$ROOT_DIR/backup/dotfiles/.config/"
 
# Window settings?
mkdir -p "$ROOT_DIR/backup/dotfiles/.config/xsettingsd"
cp ~/.config/xsettingsd/xsettingsd.conf "$ROOT_DIR/backup/dotfiles/.config/xsettingsd/"

# Mentions power profile
cp ~/.config/powerdevilrc "$ROOT_DIR/backup/dotfiles/.config/"

# Power settting AC/Battery
cp ~/.config/powermanagementprofilesrc "$ROOT_DIR/backup/dotfiles/.config/"

# App defaults?
cp ~/.config/mimeapps.list "$ROOT_DIR/backup/dotfiles/.config/"

# Bash alias's/customisation
cp ~/.bashrc "$ROOT_DIR/backup/dotfiles/"

# Disable strange audio cut out thing
mkdir -p "$ROOT_DIR/backup/dotfiles/.config/wireplumber/wireplumber.conf.d"
cp ~/.config/wireplumber/wireplumber.conf.d/51-disable-suspend.conf "$ROOT_DIR/backup/dotfiles/.config/wireplumber/wireplumber.conf.d/"

# System monitor configuration
mkdir -p "$ROOT_DIR/backup/dotfiles/.local/share/plasma-systemmonitor"
cp ~/.local/share/plasma-systemmonitor/applications.page "$ROOT_DIR/backup/dotfiles/.local/share/plasma-systemmonitor"
cp ~/.local/share/plasma-systemmonitor/overview.page "$ROOT_DIR/backup/dotfiles/.local/share/plasma-systemmonitor"
cp ~/.local/share/plasma-systemmonitor/processes.page "$ROOT_DIR/backup/dotfiles/.local/share/plasma-systemmonitor"


echo "Dotfiles backup complete."

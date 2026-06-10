#!/bin/bash

set -e

echo "Enabling system services..."

sudo systemctl enable --now NetworkManager.service
sudo systemctl enable --now bluetooth.service
sudo systemctl enable --now systemd-timesyncd.service
sudo systemctl enable --now fstrim.timer

echo "System services configured."

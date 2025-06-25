#!/bin/bash

echo "Updating system..."
sudo apt update && sudo apt upgrade -y

echo "Installing required packages..."
sudo apt install -y build-essential dkms linux-headers-$(uname -r)

echo "Mounting Guest Additions CD (if not already mounted)..."
sudo mkdir -p /mnt/cdrom
sudo mount /dev/cdrom /mnt/cdrom 2>/dev/null

echo "Running VBoxLinuxAdditions.run installer..."
sudo /mnt/cdrom/VBoxLinuxAdditions.run

echo "Cleaning up..."
sudo umount /mnt/cdrom

echo "Installation complete. Rebooting now..."
sudo reboot

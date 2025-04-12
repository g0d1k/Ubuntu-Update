#!/bin/bash

# Update package list
echo "Updating package list..."
sudo apt update -y > /dev/null 2>&1

# Upgrade all packages
echo "Upgrading all packages..."
sudo apt full-upgrade -y > /dev/null 2>&1

# Upgrade Snap applications
echo "Upgrading Snap applications..."
snap refresh > /dev/null 2>&1

# Clean up old package versions
echo "Cleaning up old package versions..."
sudo apt autoremove -y > /dev/null 2>&1

# Clean up unnecessary dependencies
echo "Cleaning up unnecessary dependencies..."
sudo apt clean -y > /dev/null 2>&1

# Update package cache
echo "Updating package cache..."
sudo apt update -y > /dev/null 2>&1

exit

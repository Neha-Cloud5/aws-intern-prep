#!/bin/bash

# --------------------------
# User & Group Management Script
# --------------------------

# Ask for user and group names
read -p "Enter username to create: " username
read -p "Enter group name to create: " groupname

# Create group if not exists
if ! getent group "$groupname" > /dev/null; then
  sudo groupadd "$groupname"
  echo "Group '$groupname' created."
else
  echo "Group '$groupname' already exists."
fi

# Create user if not exists
if ! id "$username" > /dev/null 2>&1; then
  sudo useradd -m -G "$groupname" "$username"
  echo "User '$username' created and added to '$groupname'."
else
  echo "User '$username' already exists."
fi

# Create shared folder
mkdir -p /tmp/shared_folder
sudo chown :"$groupname" /tmp/shared_folder
sudo chmod 770 /tmp/shared_folder

echo "Shared folder '/tmp/shared_folder' created with group '$groupname' ownership and permissions."

# Check
ls -ld /tmp/shared_folder

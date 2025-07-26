#!/bin/bash

if ! command -v ufw &> /dev/null; then
  echo "UFW not found. Installing..."
  sudo apt update && sudo apt install ufw -y
fi

sudo ufw enable

sudo ufw allow 22/tcp
sudo ufw allow 80/tcp

sudo ufw status

#!/bin/bash

echo "UPDATE SYSTEM"
sudo dnf update -y

echo "INSTALL SECURITY TOOLS"
sudo dnf install epel-release -y
sudo dnf install firewalld fail2ban htop net-tools curl wget -y

echo "ENABLE FIREWALL"
sudo systemctl enable firewalld
sudo systemctl start firewalld

echo "ENABLE FAIL2BAN"
sudo systemctl enable fail2ban
sudo systemctl start fail2ban

echo "DONE"

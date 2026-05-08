
#!/bin/bash

echo "UPDATE SYSTEM"
sudo apt update && sudo apt upgrade -y

echo "INSTALL SECURITY TOOLS"
sudo apt install ufw fail2ban htop net-tools curl wget -y

echo "ENABLE FIREWALL"
sudo ufw allow OpenSSH
sudo ufw enable

echo "ENABLE FAIL2BAN"
sudo systemctl enable fail2ban
sudo systemctl start fail2ban

echo "DONE"

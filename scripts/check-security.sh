#!/bin/bash

echo "===== SYSTEM ====="
uname -a

echo "===== OPEN PORT ====="
ss -tulnp

echo "===== LOGIN FAILED ====="
lastb

echo "===== FIREWALL ====="
sudo ufw status

echo "===== PROCESS ====="
ps aux --sort=-%mem | head

#!/bin/bash
# Script 1: System Identity Report
# Author: [Kushagra Srivastava] | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Kushagra Srivastava"
SOFTWARE_CHOICE="GIT"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)

DISTRO=$(lsb_release -d | cut -f2) #gets the linux distribution name
CURRENT_DATE=$(date '+%d %B %Y %T')
HOME_DIR=$HOME

# ---Display---
echo "======================================"
echo " Open Source Audit --- $STUDENT_NAME"
echo "======================================"
echo "Kernel : $KERNEL"
echo "User   : $USER_NAME"
echo "Uptime : $UPTIME"
echo "Distribution name : $DISTRO"
echo "Date & Time : $CURRENT_DATE"
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "Home Directory : $HOME_DIR"
echo "======================================"
echo " OS License: Linux is licensed under GPLv2"
echo " This means the OS source code is freely"
echo " available to study, modify and redistribute"
echo "======================================"

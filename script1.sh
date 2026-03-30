#!/bin/bash
# Script 1: System Identity Report
# Author: Tejas Dnyanehswar Thate
# Course: Open Source Software
# Software Choice: Linux Kernel

# --- Variables
STUDENT_NAME="Tejas Dnyanehswar Thate"
SOFTWARE_CHOICE="Linux Kernel"
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d'"' -f2)
KERNEL=$(uname -r)
USER_NAME=$(whoami)
USER_HOME=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date +"%A, %d %B %Y %T")

# --- Display
echo "============================================="
echo "        Open Source Audit - Welcome          "
echo "============================================="
echo "Student Name : $STUDENT_NAME"
echo "Software     : $SOFTWARE_CHOICE"
echo "---------------------------------------------"
echo "Distro       : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $USER_HOME"
echo "Uptime       : $UPTIME"
echo "Date/Time    : $CURRENT_DATE"
echo "---------------------------------------------"
echo "License Note: The Linux OS and its Kernel are released under the GPL v2 license, ensuring they remain free and open to modify."
echo "============================================="

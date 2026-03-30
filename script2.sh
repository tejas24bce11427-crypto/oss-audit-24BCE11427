#!/bin/bash
# Script 2: FOSS Package Inspector
# Updated for WSL Compatibility

PACKAGE="linux-libc-dev" 
SOFTWARE_NAME="linux"

# Check if package is installed
if dpkg -s "$PACKAGE" &> /dev/null; then
    echo "SUCCESS: $PACKAGE (Linux Kernel components) is installed on this system."
    echo "--- Package Details ---"
    dpkg -s "$PACKAGE" | grep -E 'Version|Maintainer|Architecture'
else
    echo "WARNING: $PACKAGE is NOT installed or could not be found."
fi

echo "---------------------------------------------"
# Case statement for philosophy notes
case $SOFTWARE_NAME in
    httpd|apache2) 
        echo "Philosophy: Apache - The web server that built the open internet." ;;
    mysql) 
        echo "Philosophy: MySQL - Open source at the heart of millions of databases." ;;
    linux) 
        echo "Philosophy: Linux Kernel - The free foundation that powers everything from smartphones to supercomputers." ;;
    git) 
        echo "Philosophy: Git - The version control system built by Linus Torvalds for kernel development." ;;
    *) 
        echo "Philosophy: An essential part of the FOSS ecosystem." ;;
esac

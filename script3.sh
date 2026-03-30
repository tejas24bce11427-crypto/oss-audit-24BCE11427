#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
# Linux Kernel specific directory
KERNEL_DIR="/boot"

echo "============================================="
echo "          Directory Audit Report             "
echo "============================================="

# Loop through standard directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "[FOUND] $DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "[MISSING] $DIR does not exist on this system."
    fi
done

echo "---------------------------------------------"
echo "Checking specific Linux Kernel footprint..."

# Check Kernel specific boot directory
if [ -d "$KERNEL_DIR" ]; then
    KERNEL_PERMS=$(ls -ld "$KERNEL_DIR" | awk '{print $1, $3, $4}')
    KERNEL_SIZE=$(du -sh "$KERNEL_DIR" 2>/dev/null | cut -f1)
    echo "[KERNEL DIR] Found at $KERNEL_DIR (Contains kernel images like vmlinuz)"
    echo "Permissions: $KERNEL_PERMS | Size: $KERNEL_SIZE"
else
    echo "[KERNEL DIR] $KERNEL_DIR not found."
fi

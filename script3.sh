#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
   if [ -d "$DIR" ]; then
      PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
      SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
      echo "$DIR => Permissions: $PERMS | Size: $SIZE"
   else
      echo "$DIR does not exist on this system"
   fi
done

echo "================================="
echo "Git Config Directory Check"
echo "================================="
GIT_CONFIG="$HOME/.gitconfig"
if [ -f "$GIT_CONFIG" ]; then
   PERMS=$(ls -la "$GIT_CONFIG" | awk '{print $1. $3, $4}')
   echo "git config at: $GIT_CONFIG"
   echo "Permissions: $PERMS"
else
   echo "no global git config found at $GIT_CONFIG"
fi

#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

# Check if package is installed
if dpkg -l $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|License|Summary'
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
 git)
    echo "Git: Born from One man's frustration with proprietary tools"
    echo "Linus Torwalds built it in 10 days after BitKeeper access was revoked"
    echo "Licensed under GPLv2"
    ;;
 httpd|apache2)
    echo "Apache: the web server that built the open internet."
    ;;
 mysql)
    echo "MySQL: open source at the heart of millions of apps"
    ;;
 firefox)
    echo "Firefox: a nonprofit fighting for an open web."
    ;;
esac

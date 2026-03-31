#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generste your manifesto."
echo ""

read -p "1. Name one open-source tool you use everyday: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

#building the manifesto paragraph then writing to file
echo "" > "$OUTPUT"
echo "Open Source Manifesto" >> "$OUTPUT"
echo "Generated on: $DATE" >> "$OUTPUT"
echo "=================================" >> "$OUTPUT"
echo " everyday i rely on $TOOL ; a tool built freely and shared openly." >> "$OUTPUT"
echo " to me, freedom means $FREEDOM" >> "$OUTPUT"
echo "That is why i believe software should be transparent, modifiable and accessible to all." >> "$OUTPUT"
echo "one day i hope to buold $BUILD and share it freely with the world," >> "$OUTPUT"
echo "just as linus torwalds shared git, and the community shared everything built on top of it." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "This is my commitment to open source." >> "$OUTPUT"
echo "=================================" >> "$OUTPUT"
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat "$OUTPUT"

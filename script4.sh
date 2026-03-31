#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh /var/log/messages

LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyord is 'error'
COUNT=0

if [ ! -f "$LOGFILE" ]; then
   echo "ERROR: File $LOGFILE not found."
   exit 1
fi

while IFS= read -r LINE; do
   if echo "$LINE" | grep -iq "$KEYWORD"; then
       COUNT=$((COUNT + 1))
   fi
done < "$LOGFILE"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

#print last 5 matching lines
echo "---last 5 matching lines---"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

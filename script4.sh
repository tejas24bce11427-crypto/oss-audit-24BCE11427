#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4.sh /var/log/kern.log "warning"

LOGFILE=${1:-"/var/log/syslog"} # Default to syslog if no argument provided
KEYWORD=${2:-"warning"}         # Default keyword is 'warning'
COUNT=0

# Do-while style retry if file does not exist or is empty
while [ ! -s "$LOGFILE" ]; do
    echo "Error: File $LOGFILE not found or is empty."
    read -p "Please enter a valid log file path (e.g., /var/log/syslog): " LOGFILE
done

echo "Analyzing $LOGFILE for the keyword: '$KEYWORD'..."

# Read loop
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "---------------------------------------------"
echo "RESULT: Keyword '$KEYWORD' found $COUNT times in $LOGFILE."
echo "---------------------------------------------"

# Print last 5 matching lines
if [ $COUNT -gt 0 ]; then
    echo "Here are the last 5 occurrences:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi

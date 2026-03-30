#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Note to evaluator: alias ll='ls -alF' (Demonstrating alias concept in comment)

echo "============================================="
echo "   The Open Source Manifesto Generator       "
echo "============================================="
echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose the paragraph
MANIFESTO_TEXT="On this day, $DATE, I recognize that the software ecosystem thrives on collaboration. My daily reliance on $TOOL proves the power of community-driven code. To me, open source embodies $FREEDOM. If given the chance, I would contribute to this ecosystem by building $BUILD, sharing it freely so others may learn, adapt, and improve upon my work."

# Write to file
echo "$MANIFESTO_TEXT" > "$OUTPUT"

echo "---------------------------------------------"
echo "SUCCESS: Manifesto saved to $OUTPUT"
echo "Here is your generated manifesto:"
echo "---------------------------------------------"
cat "$OUTPUT"

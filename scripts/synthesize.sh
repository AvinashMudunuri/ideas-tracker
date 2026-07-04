#!/usr/bin/env bash
set -euo pipefail

# Create a synthesis document from one or more idea files

if [ $# -eq 0 ]; then
    echo "Usage: ./scripts/synthesize.sh ideas/2026-07-04-some-idea.md [ideas/other-idea.md ...]"
    echo ""
    echo "Creates a synthesis document in synthesis/ that connects and refines raw ideas."
    exit 1
fi

echo "Enter synthesis title (e.g., 'Build Ideas Tracker System'):"
read -r TITLE

DATE=$(date +%Y-%m-%d)
SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -cd '[:alnum:]-')
FILENAME="synthesis/${SLUG}.md"

if [ -f "$FILENAME" ]; then
    echo "File already exists: $FILENAME"
    exit 1
fi

cp templates/synthesis-template.md "$FILENAME"

# Build links to original ideas
LINKS=""
for idea in "$@"; do
    if [ -f "$idea" ]; then
        BASENAME=$(basename "$idea")
        LINKS="${LINKS}- [${BASENAME}](../${idea})\n"
    fi
done

# Replace placeholders
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    sed -i '' "s/\[Synthesized Idea Title\]/$TITLE/g" "$FILENAME"
    sed -i '' "s/YYYY-MM-DD/$DATE/g" "$FILENAME"
    sed -i '' "s|\[Link to idea files\]|${LINKS}|g" "$FILENAME"
else
    # Linux
    sed -i "s/\[Synthesized Idea Title\]/$TITLE/g" "$FILENAME"
    sed -i "s/YYYY-MM-DD/$DATE/g" "$FILENAME"
    sed -i "s|\[Link to idea files\]|${LINKS}|g" "$FILENAME"
fi

echo "Created: $FILENAME"
echo ""
echo "Next steps:"
echo "1. Edit $FILENAME to add details"
echo "2. Add entry to TRACKER.md under appropriate section"
echo ""
echo "Edit now: code $FILENAME"

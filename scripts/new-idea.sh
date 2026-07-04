#!/usr/bin/env bash
set -euo pipefail

# Create a new idea from template

if [ $# -eq 0 ]; then
    echo "Usage: ./scripts/new-idea.sh \"Your idea title\""
    exit 1
fi

TITLE="$1"
DATE=$(date +%Y-%m-%d)
SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -cd '[:alnum:]-')
FILENAME="ideas/${DATE}-${SLUG}.md"

if [ -f "$FILENAME" ]; then
    echo "File already exists: $FILENAME"
    exit 1
fi

cp templates/idea-template.md "$FILENAME"

# Replace placeholder with actual title and date
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    sed -i '' "s/\[Idea Title\]/$TITLE/g" "$FILENAME"
    sed -i '' "s/YYYY-MM-DD/$DATE/g" "$FILENAME"
else
    # Linux
    sed -i "s/\[Idea Title\]/$TITLE/g" "$FILENAME"
    sed -i "s/YYYY-MM-DD/$DATE/g" "$FILENAME"
fi

echo "Created: $FILENAME"
echo "Edit now: code $FILENAME"

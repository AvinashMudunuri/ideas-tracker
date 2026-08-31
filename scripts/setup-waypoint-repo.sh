#!/usr/bin/env bash
# Bootstrap the Waypoint app into its own repository.
#
# Prerequisites:
#   1. Create an empty repo on GitHub: https://github.com/new
#      Name: waypoint
#      Do NOT initialize with README
#
#   2. Run this script from the ideas-tracker repo root:
#      ./scripts/setup-waypoint-repo.sh
#
#   3. Optional: pass a target directory (default: ../waypoint)

set -euo pipefail

TARGET_DIR="${1:-$(cd "$(dirname "$0")/.." && pwd)/../waypoint}"
REPO_URL="https://github.com/AvinashMudunuri/waypoint.git"
EXPORT_BRANCH="language-path-export"

echo "→ Cloning export branch into ${TARGET_DIR}"

if [ -d "$TARGET_DIR" ]; then
  echo "Error: ${TARGET_DIR} already exists. Remove it or pass a different path."
  exit 1
fi

git clone --branch "$EXPORT_BRANCH" --single-branch "$(git remote get-url origin)" "$TARGET_DIR"

cd "$TARGET_DIR"
git remote rename origin upstream
git remote add origin "$REPO_URL"

echo ""
echo "✓ Ready to push. Run:"
echo ""
echo "  cd ${TARGET_DIR}"
echo "  git push -u origin language-path-export:main"
echo ""
echo "Then delete the upstream remote:"
echo "  git remote remove upstream"
echo ""
echo "Repo: ${REPO_URL}"

#!/usr/bin/env bash
# Install Hallmark into DeepSeek Harness (~/.agents/skills).
set -euo pipefail
root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
dest="${DSH_SKILLS_DIR:-$HOME/.agents/skills}"
mkdir -p "$dest/hallmark"
cp -R "$root/skills/hallmark/." "$dest/hallmark/"
echo "installed hallmark -> $dest/hallmark"

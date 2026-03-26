#!/usr/bin/env bash
set -euo pipefail

DEST="$HOME/.local/bin/appimage"
SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/appimage"

cp "$SRC" "$DEST"
chmod +x "$DEST"

echo "✔ appimage instalado en $DEST"

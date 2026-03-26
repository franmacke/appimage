#!/usr/bin/env bash
set -euo pipefail

DEST="$HOME/.local/bin/appimage"
RAW_URL="https://raw.githubusercontent.com/franmacke/appimage/main/appimage"

mkdir -p "$(dirname "$DEST")"

if command -v curl &>/dev/null; then
    curl -fsSL "$RAW_URL" -o "$DEST"
elif command -v wget &>/dev/null; then
    wget -qO "$DEST" "$RAW_URL"
else
    echo "Error: se necesita curl o wget" >&2
    exit 1
fi

chmod +x "$DEST"
echo "✔ appimage instalado en $DEST"

if ! echo "$PATH" | grep -q "$HOME/.local/bin"; then
    echo "⚠ Agregá \$HOME/.local/bin a tu PATH:"
    echo "  echo 'export PATH=\"\$HOME/.local/bin:\$PATH\"' >> ~/.bashrc"
fi

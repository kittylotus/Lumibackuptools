#!/usr/bin/env bash
set -euo pipefail

INSTALL_DIR="${INSTALL_DIR:-$HOME/bin}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN_DIR="$SCRIPT_DIR/bin"
CONFIG_DIR="$HOME/.config"
CONFIG_FILE="$CONFIG_DIR/lumiverse-tools.conf"

mkdir -p "$INSTALL_DIR"
mkdir -p "$CONFIG_DIR"

echo "Installing commands to $INSTALL_DIR..."

install -m 755 "$BIN_DIR/lumibackup" "$INSTALL_DIR/lumibackup"
install -m 755 "$BIN_DIR/lumirestore" "$INSTALL_DIR/lumirestore"
install -m 644 "$BIN_DIR/lumitools-common" "$INSTALL_DIR/lumitools-common"

if [ ! -f "$CONFIG_FILE" ]; then
  cat > "$CONFIG_FILE" <<'EOF'
# Lumiverse tools config

LUMI_DIR="$HOME/Lumiverse"
TERMUX_HOME="/data/data/com.termux/files/home"
BACKUP_DIR="$TERMUX_HOME/storage/shared/Download/Lumibackup"
EOF
  echo "Created config at $CONFIG_FILE"
else
  echo "Config already exists at $CONFIG_FILE"
fi

case ":$PATH:" in
  *":$INSTALL_DIR:"*)
    echo "PATH is already configured."
    ;;
  *)
    echo
    echo "Add this to your ~/.bashrc:"
    echo
    echo "export PATH=\"$INSTALL_DIR:\$PATH\""
    echo
    ;;
esac

echo "Done."

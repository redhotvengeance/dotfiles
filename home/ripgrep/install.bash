# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  pacman ripgrep
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  apt ripgrep
fi

if [[ "$SYSTEM" == "macos" ]]; then
  brew ripgrep
fi

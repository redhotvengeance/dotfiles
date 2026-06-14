# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  pacman eza
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  apt eza
fi

if [[ "$SYSTEM" == "macos" ]]; then
  brew eza
fi

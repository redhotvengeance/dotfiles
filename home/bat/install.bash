# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  pacman bat
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  nix bat
fi

if [[ "$SYSTEM" == "macos" ]]; then
  brew bat
fi

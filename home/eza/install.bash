# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  pacman eza
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  apt eza
fi

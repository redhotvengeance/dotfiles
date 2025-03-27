# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  pacman ripgrep
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  apt ripgrep
fi

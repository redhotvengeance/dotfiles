# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  pacman direnv
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  apt direnv
fi

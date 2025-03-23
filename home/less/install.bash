# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  pacman less
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  apt less
fi

# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  pacman bat
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  apt bat
fi

# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  pacman fzf
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  apt fzf
fi

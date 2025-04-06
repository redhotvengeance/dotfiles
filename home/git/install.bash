# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  pacman git
  pacman diff-so-fancy
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  apt git
  nix git
fi

# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  pacman xh
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  nix xh
fi

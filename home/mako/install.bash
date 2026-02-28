# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  pacman mako
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  nix mako
fi

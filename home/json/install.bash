# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  pacman jq jless
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  nix jq
  nix jless
fi

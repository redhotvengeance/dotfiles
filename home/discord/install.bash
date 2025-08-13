# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  nix vesktop
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  nix vesktop
fi

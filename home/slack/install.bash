# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  paru slack-desktop
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  nix slack
fi

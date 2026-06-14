# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  pacman vivaldi
fi

if [[ "$SYSTEM" == "macos" ]]; then
  brew vivaldi
fi

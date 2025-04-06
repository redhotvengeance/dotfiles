# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  pacman waybar
  pacman otf-font-awesome
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  nix waybar
  apt fonts-font-awesome
fi

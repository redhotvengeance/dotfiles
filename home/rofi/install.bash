# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  pacman rofi-wayland
  pacman rofi-calc
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  apt rofi
fi

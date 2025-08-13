# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  pacman waybar
  pacman ttf-meslo-nerd
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  nix waybar
  apt fonts-font-awesome
fi

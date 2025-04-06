# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  pacman foot
  pacman ttf-meslo-nerd
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  apt foot
  nix nerd-fonts.meslo-lg meslo-lg
fi

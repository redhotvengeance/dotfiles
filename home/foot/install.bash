# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  pacman foot
  pacman ttf-meslo-nerd
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  apt foot

  $cmd pull_or_clone https://github.com/ryanoasis/nerd-fonts "$SOURCE_DIR/nerd-fonts"
  $cmd sh "$SOURCE_DIR/nerd-fonts/install.sh" Meslo
fi

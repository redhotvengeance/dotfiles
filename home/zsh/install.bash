# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  pacman zsh
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  apt zsh
fi

if [[ ! "$SHELL" =~ "zsh" ]]; then
  $cmd command -v zsh | sudo tee -a /etc/shells
  $cmd chsh -s $(which zsh)
fi

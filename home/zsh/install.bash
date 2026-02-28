# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

function change {
  if [[ ! "$SHELL" =~ "zsh" ]]; then
    $cmd command -v zsh | $cmd sudo tee -a /etc/shells
    $cmd chsh -s $(which zsh)
  fi
}

if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  pacman zsh

  change
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  apt zsh

  change
fi

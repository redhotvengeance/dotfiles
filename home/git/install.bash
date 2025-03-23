# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  pacman git
  pacman diff-so-fancy
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  apt git
  pull_or_clone https://github.com/so-fancy/diff-so-fancy.git "$HOME_DIR/git/diff-so-fancy"
fi

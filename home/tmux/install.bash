# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  pacman tmux
  pull_or_clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  apt tmux
  pull_or_clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
fi

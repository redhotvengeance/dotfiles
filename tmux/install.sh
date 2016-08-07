if test ! $(which tmux); then
  echo "Installing tmux..."
  brew install reattach-to-user-namespace
  brew install tmux
fi

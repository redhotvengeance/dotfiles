if test ! $(which gmailctl); then
  echo "Installing gmailctl..."
  brew install gmailctl
  mkdir -p ~/.gmailctl
  cp ~/.dotfiles/gmailctl/example.jsonnet ~/.gmailctl/config.jsonnet
fi

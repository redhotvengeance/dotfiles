if test ! $(which pyenv); then
  echo "Installing pyenv..."
  brew install pyenv
  pyenv install 2.7.8
  pyenv global 2.7.8
fi

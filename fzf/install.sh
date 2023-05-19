if test ! $(which fzf); then
  echo "Installing fzf..."
  if test "$(uname)" = "Darwin"
  then
    brew install fzf
    $(brew --prefix)/opt/fzf/install
  elif test "$(uname -s | cut -c 1-5)" = "Linux"
  then
    sudo apt-get install fzf
  fi
fi

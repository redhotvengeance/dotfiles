if test ! $(which mvim); then
  echo "Installing MacVim..."
  brew install macvim --with-override-system-vim
fi

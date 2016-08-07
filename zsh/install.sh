if test ! $(which zsh); then
  echo "Installing zsh..."
  brew install zsh
  command -v zsh | sudo tee -a /etc/shells
  chsh -s $(which zsh)
fi

if test ! $(which zsh-syntax-highlighting); then
  echo "Installing zsh-syntax-highlighting..."
  brew install zsh-syntax-highlighting
fi

if test ! $(which zsh-autosuggestions); then
  echo "Installing zsh-autosuggestions..."
  brew install zsh-autosuggestions
fi

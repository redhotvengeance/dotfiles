if [ $(echo $SHELL) != "/usr/local/bin/zsh" ] 
then
  echo "Installing zsh..."
  brew install zsh

  echo "Setting zsh as default shell..."
  command -v zsh | sudo tee -a /etc/shells
  chsh -s $(which zsh)

  echo "Installing zsh-syntax-highlighting..."
  brew install zsh-syntax-highlighting

  echo "Installing zsh-autosuggestions..."
  brew install zsh-autosuggestions
fi

if [ $(echo $SHELL) != "/usr/local/bin/zsh" ] 
then
  echo "Installing zsh..."
  brew install zsh

  echo "Setting zsh as default shell..."
  command -v zsh | sudo tee -a /etc/shells
  chsh -s $(which zsh)
fi

if test ! $(which zap); then
  echo "Installing zap..."
  zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1 --keep
fi

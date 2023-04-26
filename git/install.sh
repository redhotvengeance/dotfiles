if test ! $(which git); then
  echo "Installing Git..."
  brew install git
fi

if test ! $(which diff-so-fancy); then
  echo "Installing diff-so-fancy..."
  brew install diff-so-fancy
fi

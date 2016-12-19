if test ! $(which pyenv); then
  echo "Installing pyenv..."
  brew install pyenv
  export PYTHON_CONFIGURE_OPTS="--enable-framework"
  pyenv install 2.7.8
  pyenv global 2.7.8
fi

if test ! $(which http); then
  echo "Installing httpie..."
  pip install httpie
fi

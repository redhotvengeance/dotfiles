if test "$(uname)" = "Darwin"
then
  brew install bat
elif test "$(uname -s | cut -c 1-5)" = "Linux"
then
  sudo apt-get install bat
fi

if test "$(uname)" = "Darwin"
then
  brew install xh
elif test "$(uname -s | cut -c 1-5)" = "Linux"
then
  sudo apt-get install xh
fi

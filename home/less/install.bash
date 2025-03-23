if [[ "$SYSTEM" == "arch" ]]; then
  pacman less
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  apt less
fi

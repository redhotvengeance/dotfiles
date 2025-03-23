function apt {
  $cmd sudo apt install --yes $@
}

function pacman {
  $cmd sudo pacman --sync --needed --noconfirm $@
}

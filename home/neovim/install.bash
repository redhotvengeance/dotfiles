# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  pacman bob
  $cmd bob use nightly
  $cmd bob update --all
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  # dependencies
  apt ninja-build gettext cmake curl build-essential

  out=$(pull_or_clone https://github.com/neovim/neovim "$SOURCE_DIR/neovim" nightly)
  if [[ "$out" != "Already up to date." ]]; then
    $cmd cd "$SOURCE_DIR/neovim"
    $cmd make CMAKE_BUILD_TYPE=RelWithDebInfo
    $cmd sudo make install
  fi
fi

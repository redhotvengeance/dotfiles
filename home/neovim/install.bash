# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  # dependencies
  pacman base-devel cmake ninja curl

fi

if [[ "$SYSTEM" == "glinux" ]]; then
  # dependencies
  apt ninja-build gettext cmake curl build-essential
fi

pull_or_clone https://github.com/neovim/neovim "$SOURCE_DIR/neovim" stable
$cmd cd "$SOURCE_DIR/neovim"
$cmd make CMAKE_BUILD_TYPE=RelWithDebInfo
$cmd sudo make install

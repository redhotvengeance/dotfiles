# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  pacman xh
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  pull_or_clone https://github.com/ducaale/xh "$SOURCE_DIR/xh"
  $cmd sh "$SOURCE_DIR/xh/install.sh"
fi

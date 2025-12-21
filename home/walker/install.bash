# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  # dependencies
  pacman openbsd-netcat

  paru walker
  paru elephant
  paru elephant-calc
  paru elephant-clipboard
  paru elephant-desktopapplications
  paru elephant-symbols
  paru elephant-unicode
fi

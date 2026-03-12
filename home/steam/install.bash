# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "cachy" ]]; then
  pacman cachyos-gaming-meta
  pacman gamescope goverlay mangohud
  pacman steam
fi

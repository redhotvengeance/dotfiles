# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  # dependencies
  pacman base-devel
fi

out=$(pull_or_clone https://aur.archlinux.org/paru.git "$SOURCE_DIR/paru" master)
if [[ "$out" != "Already up to date." ]]; then
  $cmd cd "$SOURCE_DIR/paru"
  $cmd makepkg -si
fi

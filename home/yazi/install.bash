# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  pacman yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide imagemagick
fi

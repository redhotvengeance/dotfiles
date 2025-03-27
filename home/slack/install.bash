# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  pacman flatpak
  flatpak flathub com.slack.Slack
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  apt flatpak
  flatpak flathub com.slack.Slack
fi

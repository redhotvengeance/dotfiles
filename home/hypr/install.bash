# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

function make_monitors {
  source "$HELPERS_DIR/monitors.bash"

  echo "monitor = , preferred, auto, ${scale[$CURR_HOST]}" > "$HOME_DIR/hypr/monitors.conf"

  for m in "${external[@]}"; do
    echo "monitor = desc:$m, ${res[$m]}, auto, ${scale[$m]}" >> "$HOME_DIR/hypr/monitors.conf"
  done
}

if [[ "$SYSTEM" == "arch" ]]; then
  pacman hyprland hyprpolkitagent xdg-desktop-portal-hyprland xdg-desktop-portal-gtk wireplumber brightnessctl
  pacman hypridle
  pacman hyprlock
  pacman hyprpaper
  pull_or_clone https://github.com/Gustash/hyprshot.git "$SOURCE_DIR/hyprshot"

  make_monitors
fi

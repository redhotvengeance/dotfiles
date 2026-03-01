# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

function make_monitors {
  source "$HELPERS_DIR/monitors.bash"

  echo "monitor = , preferred, auto, ${scale[$CURR_HOST]}" > "$HOME_DIR/hyprland/monitors.conf"

  for m in "${external[@]}"; do
    echo "monitor = desc:$m, ${res[$m]}, auto, ${scale[$m]}" >> "$HOME_DIR/hyprland/monitors.conf"
  done
}

if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  pacman hyprland hyprpolkitagent xdg-desktop-portal-hyprland xdg-desktop-portal-gtk wireplumber brightnessctl

  make_monitors
fi

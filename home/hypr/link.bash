if [[ "$SYSTEM" == "arch" ]]; then
  mkdir -p "$HOME/.config/hypr"
  mkdir -p "$HOME/.config/uwsm"

  link "$HOME_DIR/hypr/hyprland.conf" "$HOME/.config/hypr/hyprland.conf"
  link "$HOME_DIR/hypr/monitors.conf" "$HOME/.config/hypr/monitors.conf"
  link "$HOME_DIR/hypr/env-hyprland" "$HOME/.config/uwsm/env-hyprland"
  link "$HOME_DIR/hypr/hypridle.conf" "$HOME/.config/hypr/hypridle.conf"
  link "$HOME_DIR/hypr/hyprlock.conf" "$HOME/.config/hypr/hyprlock.conf"
  link "$HOME_DIR/hypr/hyprpaper.conf" "$HOME/.config/hypr/hyprpaper.conf"
  link "$SOURCE_DIR/hypr/hyprshot" "/usr/local/bin/hyprshot"

  $cmd systemctl --user enable --now hyprpolkitagent.service
  $cmd systemctl --user enable --now hypridle.service
  $cmd systemctl --user enable --now hyprpaper.service
fi

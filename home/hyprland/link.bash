if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  mkdir -p "$HOME/.config/hypr"
  mkdir -p "$HOME/.config/uwsm"

  link "$HOME_DIR/hyprland/hyprland.conf" "$HOME/.config/hypr/hyprland.conf"
  link "$HOME_DIR/hyprland/monitors.conf" "$HOME/.config/hypr/monitors.conf"
  link "$HOME_DIR/hyprland/env-hyprland" "$HOME/.config/uwsm/env-hyprland"

  $cmd systemctl --user enable --now hyprpolkitagent.service
fi

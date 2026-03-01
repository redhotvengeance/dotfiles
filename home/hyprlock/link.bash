if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  mkdir -p "$HOME/.config/hypr"

  link "$HOME_DIR/hyprlock/hyprlock.conf" "$HOME/.config/hypr/hyprlock.conf"
fi

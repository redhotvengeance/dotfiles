if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  mkdir -p "$HOME/.config/matugen"
  mkdir -p "$HOME/.cache/matugen"

  link "$HOME_DIR/matugen/config.toml" "$HOME/.config/matugen/config.toml"

  touch "$HOME/.cache/matugen/ghostty"
  touch "$HOME/.cache/matugen/hyprland-colors.conf"
  touch "$HOME/.cache/matugen/waybar.css"
fi

if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  mkdir -p "$HOME/.config/matugen"

  link "$HOME_DIR/matugen/config.toml" "$HOME/.config/matugen/config.toml"
fi

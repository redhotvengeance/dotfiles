if [[ "$SYSTEM" == "arch" ]]; then
  mkdir -p "$HOME/.config/ghostty"

  link "$HOME_DIR/ghostty/config" "$HOME/.config/ghostty/config"
fi

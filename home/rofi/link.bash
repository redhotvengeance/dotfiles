if [[ "$SYSTEM" == "arch" ]]; then
  mkdir -p "$HOME/.config/rofi"

  link "$HOME_DIR/rofi/config.rasi" "$HOME/.config/rofi/config.rasi"
fi

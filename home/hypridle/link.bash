if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  mkdir -p "$HOME/.config/hypr"

  link "$HOME_DIR/hypridle/hypridle.conf" "$HOME/.config/hypr/hypridle.conf"
fi

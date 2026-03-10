if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  mkdir -p "$HOME/.config/tofi"

  link "$HOME_DIR/tofi/config" "$HOME/.config/tofi/config"
fi

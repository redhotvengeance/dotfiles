if [[ "$SYSTEM" == "arch" ]]; then
  mkdir -p "$HOME/.config/uwsm"

  link "$HOME_DIR/uwsm/env" "$HOME/.config/uwsm/env"
fi

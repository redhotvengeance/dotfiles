if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  mkdir -p "$HOME/.config/uwsm"
  mkdir -p "$HOME/.config/uwsm/env.d"

  link "$HOME_DIR/uwsm/env.base" "$HOME/.config/uwsm/env"
  link "$HOME_DIR/uwsm/env.hyprland" "$HOME/.config/uwsm/env-hyprland"

  if [[ "$GPU" == "amd" ]]; then
    link "$HOME_DIR/uwsm/env.amd" "$HOME/.config/uwsm/env.d/90-hardware"
  fi

  if [[ "$GPU" == "nvidia" ]]; then
    link "$HOME_DIR/uwsm/env.nvidia" "$HOME/.config/uwsm/env.d/90-hardware"
  fi
fi

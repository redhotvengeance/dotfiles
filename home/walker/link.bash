if [[ "$SYSTEM" == "arch" ]]; then
  mkdir -p "$HOME/.config/walker"

  link "$HOME_DIR/walker/config.toml" "$HOME/.config/walker/config.toml"

  $cmd elephant service enable
  $cmd systemctl --user enable --now elephant.service
fi

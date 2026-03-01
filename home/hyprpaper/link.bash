if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  mkdir -p "$HOME/.config/hypr"

  link "$HOME_DIR/hyprpaper/hyprpaper.conf" "$HOME/.config/hypr/hyprpaper.conf"

  $cmd systemctl --user enable --now hyprpaper.service
fi

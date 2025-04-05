mkdir -p "$HOME/.config/mako"

link "$HOME_DIR/mako/config" "$HOME/.config/mako/config"

$cmd systemctl --user enable --now mako.service

if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  mkdir -p "$HOME/.config/emacs"

  link "$HOME_DIR/emacs/init.el" "$HOME/.config/emacs/init.el"
  link "$HOME_DIR/emacs/config.org" "$HOME/.config/emacs/config.org"

  link "$HOME_DIR/emacs/emacs-mail.desktop" "$HOME/.local/share/applications/emacs-mail.desktop"
  link "$HOME_DIR/emacs/emacs.desktop" "$HOME/.local/share/applications/emacs.desktop"
  link "$HOME_DIR/emacs/emacsclient-mail.desktop" "$HOME/.local/share/applications/emacsclient-mail.desktop"
  link "$HOME_DIR/emacs/emacsclient.desktop" "$HOME/.local/share/applications/emacsclient.desktop"
fi

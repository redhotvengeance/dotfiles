if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  mkdir -p "$HOME/.config/qutebrowser"
  mkdir -p "$HOME/.local/share/qutebrowser-personal/config/qutebrowser"
  mkdir -p "$HOME/.local/share/qutebrowser-work/config/qutebrowser"

  link "$HOME_DIR/qutebrowser/global-config.py" "$HOME/.config/qutebrowser/config.py"
  link "$HOME_DIR/qutebrowser/personal-config.py" "$HOME/.local/share/qutebrowser-personal/config/config.py"
  link "$HOME_DIR/qutebrowser/qutebrowser-personal.desktop" "$HOME/.local/share/applications/qutebrowser-personal.desktop"
  link "$HOME_DIR/qutebrowser/org.qutebrowser.qutebrowser.desktop" "$HOME/.local/share/applications/org.qutebrowser.qutebrowser.desktop"

  if [[ "$CONTEXT" == "work" ]]; then
    link "$HOME_DIR/qutebrowser/work-config.py" "$HOME/.local/share/qutebrowser-work/config/config.py"
    link "$HOME_DIR/qutebrowser/qutebrowser-work.desktop" "$HOME/.local/share/applications/qutebrowser-work.desktop"
  fi
fi

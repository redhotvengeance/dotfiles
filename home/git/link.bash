link "$HOME_DIR/git/gitconfig" "$HOME/.gitconfig"
link "$HOME_DIR/git/gitconfig_global" "$HOME/.gitconfig_global"

if [[ "$SYSTEM" == "glinux" ]]; then
  link "$HOME_DIR/git/diff-so-fancy/diff-so-fancy" "/usr/local/bin/diff-so-fancy"
fi

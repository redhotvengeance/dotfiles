mkdir -p "$HOME/.config/fontconfig/conf.d/"
mkdir -p "$HOME/.config/nix"
mkdir -p "$HOME/.config/nixpkgs"

link "$HOME_DIR/nix/10-nix-fonts.conf" "$HOME/.config/fontconfig/conf.d/10-nix-fonts.conf"
link "$HOME_DIR/nix/config.nix" "$HOME/.config/nixpkgs/config.nix"
link "$HOME_DIR/nix/nix.conf" "$HOME/.config/nix/nix.conf"

mkdir -p ~/.config
echo "Creating symlink for ~/.dotfiles/nvim -> ~/.config/nvim"
rm -rf ~/.config/nvim
ln -sf ~/.dotfiles/nvim ~/.config/nvim

mkdir -p ~/.config
echo "Creating symlink for ~/.dotfiles/vim -> ~/.vim"
rm -f ~/.vim
ln -sf ~/.dotfiles/vim ~/.vim
echo "Creating symlink for ~/.vim -> ~/.config/nvim"
rm -f ~/.config/nvim
ln -sf ~/.vim ~/.config/nvim
echo "Creating symlink for ~/.vimrc -> ~/.config/nvim/init.vim"
rm -f ~/.config/nvim/init.vim
ln -sf ~/.vimrc ~/.config/nvim/init.vim

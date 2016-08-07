mkdir -p ~/.config
echo "Creating symlink for ~/.vim -> ~/.config/nvim"
ln -sf ~/.vim ~/.config/nvim
echo "Creating symlink for ~/.vimrc -> ~/.config/nvim/init.vim"
ln -sf ~/.vimrc ~/.config/nvim/init.vim

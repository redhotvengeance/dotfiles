mkdir -p ~/.gmailctl
echo "Creating symlink for ~/.dotfiles/gmailctl -> ~/.gmailctl"
rm ~/.gmailctl/actions.libsonnet ~/.gmailctl/config.libsonnet ~/.gmailctl/filters.libsonnet
ln -sf ~/.dotfiles/gmailctl/actions.libsonnet ~/.gmailctl/actions.libsonnet
ln -sf ~/.dotfiles/gmailctl/config.libsonnet ~/.gmailctl/config.libsonnet
ln -sf ~/.dotfiles/gmailctl/filters.libsonnet ~/.gmailctl/filters.libsonnet

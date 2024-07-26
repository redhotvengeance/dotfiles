{ config, dotfiles, ... }: {
  programs.starship.enable = true;

  home.file.".config/starship.toml".source = config.lib.file.mkOutOfStoreSymlink "${dotfiles}/home/starship/starship.toml";
}

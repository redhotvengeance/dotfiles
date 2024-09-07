{ config, host, ... }: {
  programs.starship.enable = true;

  home.file.".config/starship.toml".source = config.lib.file.mkOutOfStoreSymlink "${host.dotfiles}/home/starship/starship.toml";
}

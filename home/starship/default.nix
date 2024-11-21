{ config, unstable, host, ... }: {
  programs.starship = {
    enable = true;
    package = unstable.starship;
  };

  home.file.".config/starship.toml".source = config.lib.file.mkOutOfStoreSymlink "${host.dotfiles}/home/starship/starship.toml";
}

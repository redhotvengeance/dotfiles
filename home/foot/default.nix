{ config, pkgs, dotfiles, ... }: {
  home.packages = with pkgs; [
    foot
  ];

  home.file.".config/foot/foot.ini".source = config.lib.file.mkOutOfStoreSymlink "${dotfiles}/home/foot/foot.ini";
}

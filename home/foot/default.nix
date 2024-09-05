{ config, pkgs, dotfiles, ... }: {
  home.packages = with pkgs; [
    foot
    meslo-lgs-nf
  ];

  home.file.".config/foot/foot.ini".source = config.lib.file.mkOutOfStoreSymlink "${dotfiles}/home/foot/foot.ini";
}

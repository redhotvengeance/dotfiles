{ config, unstable, host, ... }: {
  home.packages = with unstable; [
    foot
    meslo-lgs-nf
  ];

  home.file.".config/foot/foot.ini".source = config.lib.file.mkOutOfStoreSymlink "${host.dotfiles}/home/foot/foot.ini";
}

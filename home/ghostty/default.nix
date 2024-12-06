{ config, unstable, host, ghostty, ... }: {
  home.packages = with unstable; [
    ghostty.packages.x86_64-linux.default
    meslo-lgs-nf
  ];

  home.file.".config/ghostty/config".source = config.lib.file.mkOutOfStoreSymlink "${host.dotfiles}/home/ghostty/config";
}

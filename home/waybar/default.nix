{ config, pkgs, host, ... }: {
  programs.waybar.enable = true;

  home.packages = with pkgs; [
    font-awesome
  ];

  home.file.".config/waybar/config".source = config.lib.file.mkOutOfStoreSymlink "${host.dotfiles}/home/waybar/config";
  home.file.".config/waybar/style.css".source = config.lib.file.mkOutOfStoreSymlink "${host.dotfiles}/home/waybar/style.css";
}

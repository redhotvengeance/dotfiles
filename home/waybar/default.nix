{ config, dotfiles, ... }: {
  programs.waybar.enable = true;

  home.file.".config/waybar/config".source = config.lib.file.mkOutOfStoreSymlink "${dotfiles}/home/waybar/config";
  home.file.".config/waybar/style.css".source = config.lib.file.mkOutOfStoreSymlink "${dotfiles}/home/waybar/style.css";
}

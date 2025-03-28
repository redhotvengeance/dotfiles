{ config, pkgs, ghostty, ... }:

{
  imports = [
    ../../home/bat
    ../../home/brave
    ../../home/direnv
    ../../home/discord
    ../../home/eza
    ../../home/foot
    ../../home/fzf
    ../../home/git
    ../../home/ghostty
    ../../home/gmailctl
    ../../home/hypridle
    ../../home/hyprland
    ../../home/hyprlock
    ../../home/hyprpaper
    ../../home/hyprshot
    ../../home/json
    ../../home/nvim
    ../../home/pass
    ../../home/qutebrowser
    ../../home/rg
    ../../home/rofi
    ../../home/slack
    ../../home/starship
    ../../home/swaync
    ../../home/tmux
    ../../home/waybar
    ../../home/xh
    ../../home/yazi
    ../../home/zsh
  ];

  home.username = "ian";
  home.homeDirectory = "/home/ian";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.packages = [
  ];

  home.file = {
  };

  home.sessionVariables = {
  };

  fonts.fontconfig.enable = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}

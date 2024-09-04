{ config, pkgs, ... }:

{
  imports = [
    ../../home/bat
    ../../home/dunst
    ../../home/eza
    ../../home/foot
    ../../home/fzf
    ../../home/git
    ../../home/gmailctl
    ../../home/json
    ../../home/nvim
    ../../home/pass
    ../../home/rg
    ../../home/rofi
    ../../home/slack
    ../../home/starship
    ../../home/tmux
    ../../home/waybar
    ../../home/xh
    ../../home/yazi
    ../../home/zsh
  ];

  targets.genericLinux.enable = true;

  home.username = "ilollar";
  home.homeDirectory = "/home/ilollar";

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
    SSH_AUTH_SOCK = "${builtins.getEnv "XDG_RUNTIME_DIR"}/ssh-agent.socket";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
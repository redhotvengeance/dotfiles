{ pkgs, ... }: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  home.packages = with pkgs; [
    gcc
  ];

  home.file.".config/nvim" = {
    source = ../nvim;
    recursive = true;
  };
}

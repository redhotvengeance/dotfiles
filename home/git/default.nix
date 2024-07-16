{ pkgs, ... }: {
  programs.git.enable = true;

  home.packages = with pkgs; [
    diff-so-fancy
  ];

  home.file.".gitconfig".source = ./gitconfig;
  home.file.".gitignore_global".source = ./gitignore_global;
}

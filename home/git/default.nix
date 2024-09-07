{ config, pkgs, host, ... }: {
  programs.git.enable = true;

  home.packages = with pkgs; [
    diff-so-fancy
  ];

  home.file.".gitconfig".source = config.lib.file.mkOutOfStoreSymlink "${host.dotfiles}/home/git/gitconfig";
  home.file.".gitignore_global".source = config.lib.file.mkOutOfStoreSymlink "${host.dotfiles}/home/git/gitignore_global";
}

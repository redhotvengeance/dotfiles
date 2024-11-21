{ config, unstable, host, ... }: {
  programs.git = {
    enable = true;
    package = unstable.git;
  };

  home.packages = with unstable; [
    diff-so-fancy
  ];

  home.file.".gitconfig".source = config.lib.file.mkOutOfStoreSymlink "${host.dotfiles}/home/git/gitconfig";
  home.file.".gitignore_global".source = config.lib.file.mkOutOfStoreSymlink "${host.dotfiles}/home/git/gitignore_global";
}

{ unstable, ... }: {
  programs.fzf = {
    enable = true;
    package = unstable.fzf;
  };
}

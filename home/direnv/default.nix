{ unstable, ... }: {
  programs.direnv = {
    enable = true;
    package = unstable.direnv;
  };
}

{ unstable, ... }: {
  programs.ripgrep = {
    enable = true;
    package = unstable.ripgrep;
  };
}

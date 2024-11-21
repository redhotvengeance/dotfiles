{ unstable, ... }: {
  programs.yazi = {
    enable = true;
    package = unstable.yazi;

    enableZshIntegration = true;
  };
}

{ unstable, ... }: {
  programs.bat = {
    enable = true;
    package = unstable.bat;
  };

  programs.zsh.shellAliases = {
    cat = "bat";
  };
}

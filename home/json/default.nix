{ unstable, ... }: {
  programs.jq = {
    enable = true;
    package = unstable.jq;
  };

  home.packages = with unstable; [
    jless
  ];
}

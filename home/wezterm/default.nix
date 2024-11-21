{ unstable, ... }: {
  programs.wezterm = {
    enable = true;
    package = unstable.wezterm;

    extraConfig = builtins.readFile ./wezterm.lua;
  };
}

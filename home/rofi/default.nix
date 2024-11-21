{ unstable, ... }: {
  programs.rofi = {
    enable = true;
    package = unstable.rofi-wayland;

    theme = "arthur";
    plugins = [
      unstable.rofi-calc
    ];
  };
}

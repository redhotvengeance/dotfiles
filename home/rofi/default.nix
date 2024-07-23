{ pkgs, ... }: {
  programs.rofi = {
    enable = true;

    package = pkgs.rofi-wayland;
    theme = "arthur";
    plugins = [
      pkgs.rofi-calc
    ];
  };
}

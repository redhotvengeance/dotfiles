{ pkgs, ... }: {
  wayland.windowManager.hyprland = {
    enable = true;

    extraConfig = builtins.readFile ./hyprland.conf;
  };

  home.packages = with pkgs; [
    lxqt.lxqt-policykit
  ];

  xdg.portal = {
    enable = true;
    config.common.default = "*";
    extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
    ];
  };
}

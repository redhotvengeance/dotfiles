{ pkgs, ... }:
let
  clamshell = pkgs.writeShellScript "clamshell" ''
    #!/usr/bin/env bash

    sleep 1

    LID_OPEN=$(${pkgs.gnugrep}/bin/grep -c open /proc/acpi/button/lid/LID0/state)
    NUM_MONITORS=$(hyprctl monitors all | ${pkgs.gnugrep}/bin/grep -c Monitor)

    if [[ $1 == "on" ]]; then
      if [[ $NUM_MONITORS -gt 1 ]]; then
        if [[ $LID_OPEN == 0 ]]; then
          hyprctl keyword monitor "eDP-1,disable"
        fi
      fi
    elif [[ $1 == "off" ]]; then
      if [[ $LID_OPEN == 1 ]]; then
        hyprctl keyword monitor "eDP-1,preferred,auto,1.566667"
      fi
    fi
  '';
in {
  wayland.windowManager.hyprland = {
    enable = true;

    extraConfig = builtins.readFile ./hyprland.conf + ''
      bindl =, switch:on:Lid Switch, exec, ${clamshell} on
      bindl =, switch:off:Lid Switch, exec, ${clamshell} off
    '';
  };

  home.packages = with pkgs; [
    lxqt.lxqt-policykit
    gnugrep
  ];

  xdg.portal = {
    enable = true;
    config.common.default = "*";
    extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
    ];
  };
}

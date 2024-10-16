{ config, lib, pkgs, host, ... }:
let
  clamshell = pkgs.writeShellScriptBin "clamshell" ''
    #!/usr/bin/env bash

    sleep 1

    LID_OPEN=$(${pkgs.gnugrep}/bin/grep -c open /proc/acpi/button/lid/LID/state)
    NUM_MONITORS=$(swaymsg -p -t get_outputs | ${pkgs.gnugrep}/bin/grep -c Output)

    if [[ $1 == "on" ]]; then
      if [[ $NUM_MONITORS -gt 1 ]]; then
        if [[ $LID_OPEN == 0 ]]; then
          echo "disable laptop"
          swaymsg output eDP-1 disable
        fi
      fi
    elif [[ $1 == "off" ]]; then
      if [[ $LID_OPEN == 1 ]]; then
        echo "enable laptop"
        swaymsg output eDP-1 enable
      fi
    fi
  '';

  monitors = import ../../modules/monitors.nix;

  outs = {
    eDP-1 = {
      scale = monitors.laptop.${host.hostname}.scale;
    };
  } // builtins.mapAttrs (name: value: {
    resolution = value.res + "@" + value.hz + "Hz";
    scale = value.scale;
  }) (builtins.listToAttrs monitors.external);
in {
  wayland.windowManager.sway = {
    enable = true;

    config = rec {
      modifier = "Mod4";
      left = "h";
      down = "j";
      up = "k";
      right = "l";
      terminal = "foot";
      menu = "rofi -show drun";
      input = {
        "type:keyboard" = {
          xkb_options = "ctrl:nocaps";
        };
        "type:touchpad" = {
          click_method = "clickfinger";
          natural_scroll = "enabled";
          tap = "enabled";
        };
      };
      output = outs;
      gaps = {
        inner = 2;
        outer = 0;
        smartGaps = true;
        smartBorders = "on";
      };
      bars = [];
      keybindings = let
        modifier = config.wayland.windowManager.sway.config.modifier;
        left = config.wayland.windowManager.sway.config.left;
        down = config.wayland.windowManager.sway.config.down;
        up = config.wayland.windowManager.sway.config.up;
        right = config.wayland.windowManager.sway.config.right;
        terminal = config.wayland.windowManager.sway.config.terminal;
        menu = config.wayland.windowManager.sway.config.menu;
      in lib.mkOptionDefault {
        "${modifier}+Return" = "exec ${terminal}";
        "${modifier}+Shift+q" = "kill";
        "${modifier}+d" = "exec ${menu}";

        "${modifier}+${left}" = "focus left";
        "${modifier}+${down}" = "focus down";
        "${modifier}+${up}" = "focus up";
        "${modifier}+${right}" = "focus right";

        "${modifier}+Shift+${left}" = "move left";
        "${modifier}+Shift+${down}" = "move down";
        "${modifier}+Shift+${up}" = "move up";
        "${modifier}+Shift+${right}" = "move right";

        "${modifier}+b" = "splith";
        "${modifier}+v" = "splitv";
        "${modifier}+f" = "fullscreen toggle";
        "${modifier}+a" = "focus parent";

        "${modifier}+s" = "layout stacking";
        "${modifier}+w" = "layout tabbed";
        "${modifier}+e" = "layout toggle split";

        "${modifier}+space" = "focus mode_toggle";
        "${modifier}+Shift+space" = "floating toggle";

        "${modifier}+1" = "workspace number 1";
        "${modifier}+2" = "workspace number 2";
        "${modifier}+3" = "workspace number 3";
        "${modifier}+4" = "workspace number 4";
        "${modifier}+5" = "workspace number 5";
        "${modifier}+6" = "workspace number 6";
        "${modifier}+7" = "workspace number 7";
        "${modifier}+8" = "workspace number 8";
        "${modifier}+9" = "workspace number 9";
        "${modifier}+0" = "workspace number 10";

        "${modifier}+Shift+1" = "move container to workspace number 1";
        "${modifier}+Shift+2" = "move container to workspace number 2";
        "${modifier}+Shift+3" = "move container to workspace number 3";
        "${modifier}+Shift+4" = "move container to workspace number 4";
        "${modifier}+Shift+5" = "move container to workspace number 5";
        "${modifier}+Shift+6" = "move container to workspace number 6";
        "${modifier}+Shift+7" = "move container to workspace number 7";
        "${modifier}+Shift+8" = "move container to workspace number 8";
        "${modifier}+Shift+9" = "move container to workspace number 9";
        "${modifier}+Shift+0" = "move container to workspace number 10";

        "${modifier}+minus" = "scratchpad show";
        "${modifier}+Shift+minus" = "move scratchpad";

        "${modifier}+Shift+c" = "reload";
        "${modifier}+Shift+e" =
          "exec swaynag -t warning -m 'You pressed the exit shortcut. Do you really want to exit sway? This will end your Wayland session.' -b 'Yes, exit sway' 'swaymsg exit'";

        "${modifier}+r" = "mode resize";

        "XF86AudioRaiseVolume" = "exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +5%";
        "XF86AudioLowerVolume" = "exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -5%";
        "XF86AudioMute" = "exec --no-startup-id pactl set-sink-mute @DEFAULT_SINK@ toggle";
        "XF86AudioMicMute" = "exec --no-startup-id pactl set-source-mute @DEFAULT_SOURCE@ toggle";

        "XF86MonBrightnessUp" = "exec --no-startup-id brightnessctl set 5%+";
        "XF86MonBrightnessDown" = "exec --no-startup-id brightnessctl set 5%-";
      };

      modes = {
        resize = let
          modifier = config.wayland.windowManager.sway.config.modifier;
          left = config.wayland.windowManager.sway.config.left;
          down = config.wayland.windowManager.sway.config.down;
          up = config.wayland.windowManager.sway.config.up;
          right = config.wayland.windowManager.sway.config.right;
        in lib.mkOptionDefault {
          "${modifier}+${left}" = "resize shrink width 10 px";
          "${modifier}+${down}" = "resize grow height 10 px";
          "${modifier}+${up}" = "resize shrink height 10 px";
          "${modifier}+${right}" = "resize grow width 10 px";
          "Escape" = "mode default";
        };
      };

      window = {
        border = 1;
        titlebar = false;
        commands = [
          {
            criteria = {
              class = "Google-chrome";
              title = "^about:blank$";
            };
            command = "border none; floating enable; sticky enable";
          }
        ];
      };

      floating = {
        border = 1;
        titlebar = false;
      };
    };

    extraConfig = ''
      bindswitch --reload --locked lid:on exec ${clamshell} on
      bindswitch --reload --locked lid:off exec ${clamshell} off
    '';

    extraSessionCommands = ''
      export QT_WAYLAND_DISABLE_WINDOWDECORATION="1"
    '';
  };

  home.packages = [
    (
      clamshell
    )
  ];
}

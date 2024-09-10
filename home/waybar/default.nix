{ config, pkgs, ... }: {
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "bottom";
        margin = "1 0 0 0";
        spacing = 0;
        modules-left = [ "hyprland/submap" "hyprland/workspaces" "hyprland/window" ];
        modules-right = [ "pulseaudio" "backlight" "network" "battery" "cpu" "temperature" "memory" "tray" "clock" ];
        "hyprland/workspaces" = {
          all-outputs = true;
          format = "{name}{icon}";
          format-icons = {
            urgent = " ";
            default = "";
          };
          show-special = true;
          special-visible-only = true;
        };
        backlight = {
          format = "DIS {percent}%";
          tooltip = false;
        };
        pulseaudio = {
          format = "VOL {volume}%";
          format-bluetooth = "VOL {volume}% ";
          format-bluetooth-muted = "VOL --% ";
          format-muted = "VOL --%";
          format-source-muted = "VOL --% ";
          format-source = "VOL {volume}% ";
          format-icons = {
            headphone = "";
            hands-free = "";
            headset = "";
            phone = "";
            portable = "";
            car = "";
            default = ["" "" ""];
          };
          tooltip = false;
        };
        network = {
          format-wifi = "W: {ipaddr}/{cidr} ({signalStrength}%)";
          format-ethernet = "E: {ipaddr}/{cidr}";
          tooltip-format-wifi = "{essid}";
          format-disconnected = "DISCONNECTED";
        };
        battery = {
          states = {
            critical = 15;
          };
          format = "BAT {capacity}% {time}";
          format-charging = "BAT {capacity}%  {time}";
          format-plugged = "BAT {capacity}% ";
          format-time = "{H}:{m}";
          interval = 10;
          tooltip = false;
        };
        cpu = {
          format = "CPU {usage}%";
          tooltip = false;
        };
        temperature = {
          critical-threshold = 80;
          format = "{temperatureC}°C";
          tooltip = false;
        };
        memory = {
          format = "MEM {}%";
        };
        tray = {
          spacing = 4;
        };
        clock = {
          timezone = "America/Los_Angeles";
          tooltip-format = "<tt><small>{calendar}</small></tt>";
          format = "{:%Y-%m-%d %H:%M:%S}";
          interval = 1;
        };
      };
    };

    style = ./style.css;
  };

  home.packages = with pkgs; [
    font-awesome
  ];
}

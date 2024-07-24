{ ... }: {
  services.hypridle = {
    enable = true;

    settings = {
      general = {
        lock_cmd = "hyprlock"; # Avoid starting multiple hyprlock instances.
        before_sleep_cmd = "loginctl lock-session"; # Lock before suspend.
        after_sleep_cmd = "hyprctl dispatch dpms on"; # Avoid having to press a key twice to turn on the display.
        ignore_dbus_inhibit = false;
      };

      listener = [
        # Dim screen.
        {
          timeout = 150;
          on-timeout = "brightnessctl -s set 10";
          on-resume = "brightnessctl -r";
        }

        # Lock screen.
        {
          timeout = 300;
          on-timeout = "loginctl lock-session";
        }

        # Turn off screen.
        {
          timeout = 330;
          on-timeout = "hyprctl dispatch dpms off";
          on-resume = "hyprctl dispatch dpms on";
        }

        # Suspend.
        {
          timeout = 1800;
          on-timeout = "systemctl suspend";
        }
      ];
    };
  };
}

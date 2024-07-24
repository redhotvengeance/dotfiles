{ ... }: {
  programs.hyprlock = {
    enable = true;

    settings = {
      general = {
        disable_loading_bar = true;
        grace = 10;
        hide_cursor = true;
        no_fade_in = false;
      };

      background = [
        {
          path = "screenshot";
          blur_passes = 3;
          blur_size = 8;
        }
      ];

      label = [
        {
          text = "$TIME";
          font_size = 100;
          position = "0, 50";
          halign = "center";
          valign = "center";
        }
      ];

      input-field = [
        {
          size = "200, 50";
          position = "0, -80";
          dots_center = true;
          fade_on_empty = false;
          font_color = "rgb(202, 211, 245)";
          inner_color = "rgb(91, 96, 120)";
          outer_color = "rgb(255, 255, 255)";
          outline_thickness = 3;
          placeholder_text = "speak friend, and enter...";
        }
      ];
    };
  };
}

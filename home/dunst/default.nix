{ ... }: {
  services.dunst = {
    enable = true;

    settings = {
      global = {
        width = 350;
        offset = "10x10";
        origin = "bottom-right";
        frame_width = 1;
        corner_radius = 3;
        background = "#191919A0";
        font = "Monospace 9";
      };
    };
  };
}

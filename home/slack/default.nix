{ pkgs, ... }: {
  home.packages = with pkgs; [
    slack
  ];

  xdg.desktopEntries = {
    slack = {
      name = "Slack";
      comment = "Slack Desktop";
      genericName = "Slack Client for Linux";
      exec = "slack -s --enable-features=UseOzonePlatform --ozone-platform=wayland %U";
      icon = "slack";
      type = "Application";
      startupNotify = true;
      categories = [ "GNOME" "GTK" "Network" "InstantMessaging" ];
      mimeType = [ "x-scheme-handler/slack" ];
      settings = {
        StartupWMClass = "Slack";
      };
    };
  };
}

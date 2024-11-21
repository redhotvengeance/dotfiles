{ unstable, ... }: {
  services.hyprpaper = {
    enable = true;
    package = unstable.hyprpaper;

    settings = {
      ipc = "on";
      splash = false;
      splash_offset = 2.0;
    };
  };

  home.packages = [
    (
      unstable.writeShellScriptBin "cw" ''
        file=$(find ~/wallpapers -type f | shuf -n 1)
        sleep 1
        hyprctl hyprpaper unload all
        hyprctl hyprpaper preload "$file"
        hyprctl hyprpaper wallpaper ",$file"
      ''
    )
  ];
}

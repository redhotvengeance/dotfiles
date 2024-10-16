{ pkgs, ... }: {
  services.hyprpaper = {
    enable = true;

    settings = {
      ipc = "on";
      splash = false;
      splash_offset = 2.0;
    };
  };

  home.packages = [
    (
      pkgs.writeShellScriptBin "cw" ''
        file=$(find ~/wallpapers -type f | shuf -n 1)
        sleep 1
        hyprctl hyprpaper unload all
        hyprctl hyprpaper preload "$file"
        hyprctl hyprpaper wallpaper ",$file"
      ''
    )
  ];
}

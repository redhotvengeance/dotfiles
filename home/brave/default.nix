{ pkgs, ... }: {
  home.packages = with pkgs; [
    brave
  ];

  home.sessionVariables = {
    DEFAULT_BROWSER = "${pkgs.brave}";
  };

  xdg.mimeApps.defaultApplications = {
    "text/html" = "brave";
    "x-scheme-handler/http" = "brave";
    "x-scheme-handler/https" = "brave";
  };
}

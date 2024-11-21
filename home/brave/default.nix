{ unstable, ... }: {
  home.packages = with unstable; [
    brave
  ];

  home.sessionVariables = {
    DEFAULT_BROWSER = "${unstable.brave}";
  };

  xdg.mimeApps.defaultApplications = {
    "text/html" = "brave";
    "x-scheme-handler/http" = "brave";
    "x-scheme-handler/https" = "brave";
  };
}

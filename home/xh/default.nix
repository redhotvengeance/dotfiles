{ unstable, ... }: {
  home.packages = with unstable; [
    xh
  ];

  programs.zsh.shellAliases = {
    GET = "xh get";
    HEAD = "xh head";
    POST = "xh post";
    PUT = "xh put";
    DELETE = "xh delete";
    TRACE = "xh trace";
    OPTIONS = "xh options";
  };
}

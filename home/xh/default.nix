{ pkgs, ... }: {
  home.packages = with pkgs; [
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

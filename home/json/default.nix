{ pkgs, ... }: {
  programs.jq.enable = true;

  home.packages = with pkgs; [
    jless
  ];
}

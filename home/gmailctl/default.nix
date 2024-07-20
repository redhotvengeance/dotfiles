{ pkgs, ... }: {
  home.packages = with pkgs; [
    gmailctl
  ];

  home.file.".gmailctl/actions.libsonnet".source = ./actions.libsonnet;
  home.file.".gmailctl/config.libsonnet".source = ./config.libsonnet;
  home.file.".gmailctl/filters.libsonnet".source = ./filters.libsonnet;
}

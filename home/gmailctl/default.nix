{ config, pkgs, host, ... }: {
  home.packages = with pkgs; [
    gmailctl
  ];

  home.file.".gmailctl/actions.libsonnet".source = config.lib.file.mkOutOfStoreSymlink "${host.dotfiles}/home/gmailctl/actions.libsonnet";
  home.file.".gmailctl/config.libsonnet".source = config.lib.file.mkOutOfStoreSymlink "${host.dotfiles}/home/gmailctl/config.libsonnet";
  home.file.".gmailctl/filters.libsonnet".source = config.lib.file.mkOutOfStoreSymlink "${host.dotfiles}/home/gmailctl/filters.libsonnet";
}

{ config, pkgs, dotfiles, ... }: {
  home.packages = with pkgs; [
    gmailctl
  ];

  home.file.".gmailctl/actions.libsonnet".source = config.lib.file.mkOutOfStoreSymlink "${dotfiles}/home/gmailctl/actions.libsonnet";
  home.file.".gmailctl/config.libsonnet".source = config.lib.file.mkOutOfStoreSymlink "${dotfiles}/home/gmailctl/config.libsonnet";
  home.file.".gmailctl/filters.libsonnet".source = config.lib.file.mkOutOfStoreSymlink "${dotfiles}/home/gmailctl/filters.libsonnet";
}

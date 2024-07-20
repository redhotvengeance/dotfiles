{ ... }: {
  programs.eza.enable = true;

  programs.zsh.shellAliases = {
    ll = "exa --long --header --icons --no-permissions --no-user --time-style=long-iso --git";
    tree = "exa --long --tree --header --icons --no-permissions --no-user --color=always --time-style=long-iso --git | less -R";
  };
}

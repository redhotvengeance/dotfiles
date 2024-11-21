{ unstable, ... }: {
  programs.eza = {
    enable = true;
    package = unstable.eza;
  };

  programs.zsh.shellAliases = {
    ll = "eza --long --header --icons --no-permissions --no-user --time-style=long-iso --git";
    tree = "eza --long --tree --header --icons --no-permissions --no-user --color=always --time-style=long-iso --git | less -R";
  };
}

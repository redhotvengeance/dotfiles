{ pkgs, ... }: {
  programs.tmux = {
    enable = true;

    shortcut = "a";

    baseIndex = 1;
    clock24 = true;
    escapeTime = 0;
    historyLimit = 100000;
    keyMode = "vi";
    mouse = true;
    newSession = true;
    terminal = "tmux-256color";

    extraConfig = ''
      set -g renumber-windows on

      # for nested tmux sessions
      bind-key a send-prefix

      # settings to make copy-mode more vim-like
      bind-key -T copy-mode-vi 'v' send -X begin-selection
      bind-key -T copy-mode-vi 'C-v' send -X rectangle-toggle
      bind-key -T copy-mode-vi 'y' send -X copy-selection

      # check for and load local tmux.conf
      if-shell '[ -e ~/.tmux.conf.local ]' {
        source ~/.tmux.conf.local
      }
    '';

    plugins = with pkgs.tmuxPlugins; [
      pain-control
      vim-tmux-navigator
      {
        plugin = rose-pine;
        extraConfig = '' 
          set -g @rose_pine_variant 'main'
        '';
      }
    ];
  };

  home.packages = with pkgs; [
    (writeScriptBin "t" (builtins.readFile ./bin/tmux-sessionizer))
  ];
}

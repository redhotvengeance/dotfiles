{ unstable, ... }: {
  programs.zsh = {
    enable = true;
    package = unstable.zsh;

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    history = {
      extended = true;
      ignoreAllDups = true;
      save = 10000;
      share = true;
      size = 10000;
      path = "$HOME/.zsh_history";
    };

    initExtra =
      ''
        setopt APPEND_HISTORY
        setopt COMPLETE_IN_WORD
        setopt COMPLETE_ALIASES
        setopt CORRECT
        setopt HIST_VERIFY
        setopt HIST_REDUCE_BLANKS
        setopt INC_APPEND_HISTORY
        setopt LOCAL_OPTIONS
        setopt LOCAL_TRAPS
        setopt NO_BG_NICE
        setopt NO_HUP
        setopt NO_LIST_BEEP
        setopt PROMPT_SUBST

        autoload edit-command-line
        zle -N edit-command-line
        bindkey -M vicmd "^v" edit-command-line

        # check for and load local zshrc
        [[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
      '';

    sessionVariables = {
      EDITOR = "nvim";
      GIT_EDITOR = "nvim";
      VISUAL = "nvim";
    };

    shellAliases = {
      "reload!" = "source ~/.zshrc"; # reload zsh config
      vim = "nvim"; # let's use nvim instead
      df = "df -h"; # disk free, in gigabytes, not bytes
      du = "du -h -c"; # calculate disk usage for a folder
      fs = "stat -f \"%z bytes\""; # file size
    };

    plugins = [
      {
        name = "supercharge";
        src = unstable.fetchFromGitHub {
          owner = "zap-zsh";
          repo = "supercharge";
          rev = "e76f4e82d443706c2d9c8ab8e9633facbcdec768";
          sha256 = "sha256-6ygs7XcKaqxDhfXdEgEbVVSnlEMcACXjRX4JrLzPUJY=";
        };
      }
      {
        name = "vim";
        src = unstable.fetchFromGitHub {
          owner = "zap-zsh";
          repo = "vim";
          rev = "46284178bcad362db40509e1db058fe78844d113";
          sha256 = "sha256-aAmbl5XT0gj/obEVznc7M0DkyWmyRNSyO/QPwMqzZ00=";
        };
      }
    ];
  };
}

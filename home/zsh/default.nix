{ pkgs, lib, ... }: {
  programs.zsh = {
    enable = true;

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    initExtraFirst =
      ''
        # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
        # Initialization code that may require console input (password prompts, [y/n]
        # confirmations, etc.) must go above this block; everything else may go below.
        if [[ -r "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh" ]]; then
          source "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh"
        fi
      '';

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

        [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

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
        src = pkgs.fetchFromGitHub {
          owner = "zap-zsh";
          repo = "supercharge";
          rev = "e76f4e82d443706c2d9c8ab8e9633facbcdec768";
          sha256 = "sha256-6ygs7XcKaqxDhfXdEgEbVVSnlEMcACXjRX4JrLzPUJY=";
        };
      }
      {
        name = "vim";
        src = pkgs.fetchFromGitHub {
          owner = "zap-zsh";
          repo = "vim";
          rev = "46284178bcad362db40509e1db058fe78844d113";
          sha256 = "sha256-aAmbl5XT0gj/obEVznc7M0DkyWmyRNSyO/QPwMqzZ00=";
        };
      }
      {
        name = "powerlevel10k";
        file = "powerlevel10k.zsh-theme";
        src = pkgs.fetchFromGitHub {
          owner = "romkatv";
          repo = "powerlevel10k";
          rev = "2b7da93df04acd04d84f5de827e5b14077839a4b";
          sha256 = "sha256-jzLWxLLBB1MZZKJgt5R4oueuQIiqCDKRp+W+PXALHRs=";
        };
      }
    ];
  };

  home.file.".p10k.zsh".source = ./p10k.zsh;
}

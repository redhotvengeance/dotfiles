# Source (mostly): https://github.com/Phantas0s/.dotfiles/blob/master/zsh/completion.zsh

setopt AUTO_LIST # automatically list choices on ambiguous completion

zmodload zsh/complist

# use hjlk in menu selection (during completion)
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'l' vi-forward-char

# fix shift-tab in the completions menu
bindkey '^[[Z' reverse-menu-complete

# load completion
autoload -U compinit bashcompinit; compinit bashcompinit
_comp_options+=(globdots) # include hidden files

# use cache for completions
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$ZSH/.zcompcache"

# order of completers
zstyle ':completion:*' completer _expand _complete _files _correct _approximate

# show completions in a menu
zstyle ':completion:*' menu select

# try case-insensitive completion + partial words matching
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# autocomplete options for cd instead of directory stack
zstyle ':completion:*' complete-options true

# prevent variables from expanding
zstyle ':completion:*' keep-prefix true

# group completions under their tag
zstyle ':completion:*' group-name ''

# give some style to tags
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:*:*:*:descriptions' format '%F{blue}-- %D %d --%f'
zstyle ':completion:*:*:*:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:*:*:*:warnings' format ' %F{red}-- no matches found --%f'

# colorize completions
zstyle ':completion:*:default' list-colors "${(s.:.)LS_COLORS}"

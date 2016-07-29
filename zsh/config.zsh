# Source (mostly): https://github.com/nicknisi/dotfiles/blob/master/zsh/config.zsh

setopt NO_BG_NICE
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS
setopt LOCAL_TRAPS
setopt PROMPT_SUBST

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt HIST_VERIFY
setopt EXTENDED_HISTORY
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY SHARE_HISTORY
setopt APPEND_HISTORY

# Source: https://github.com/holman/dotfiles/blob/master/zsh/config.zsh
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt COMPLETE_ALIASES

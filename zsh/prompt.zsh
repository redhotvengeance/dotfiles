autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true

# Source: https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/zhann.zsh-theme
zstyle ':vcs_info:*' stagedstr '%F{green}●%f'
zstyle ':vcs_info:*' unstagedstr '%F{yellow}●%f'

# Source: https://github.com/nicknisi/dotfiles/blob/master/zsh/prompt.zsh
zstyle ':vcs_info:git*' actionformats '%b %F{red}%a%f'

autoload colors && colors

# Get ahead/behind status of the current branch
# Source: https://github.com/nicknisi/dotfiles/blob/master/zsh/prompt.zsh
arrows() {
  # do nothing if there is no upstream configured
  command git rev-parse --abbrev-ref @'{u}' &>/dev/null || return

  local arrows=""
  local status
  arrow_status="$(command git rev-list --left-right --count HEAD...@'{u}' 2>/dev/null)"

  # do nothing if the command failed
  (( !$? )) || return

  # split on tabs
  arrow_status=(${(ps:\t:)arrow_status})
  local left=${arrow_status[1]} right=${arrow_status[2]}

  (( ${right:-0} > 0 )) && arrows+="%F{red}⇣%f"
  (( ${left:-0} > 0 )) && arrows+="%F{red}⇡%f"

  echo $arrows
}

# Source: https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/zhann.zsh-theme
precmd () {
  if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
    zstyle ':vcs_info:*' formats ' %b %c%u%B%F{green}%f'
  } else {
    zstyle ':vcs_info:*' formats ' %b %c%u%B%F{red}●%F{green}%f'
  }

  vcs_info

  print -P '\n%~'
}

export PROMPT='> '
export RPROMPT='${vcs_info_msg_0_}`arrows`%{$reset_color%}'

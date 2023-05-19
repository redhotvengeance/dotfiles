# Source (mostly): https://github.com/nicknisi/dotfiles/blob/master/zsh/aliases.zsh

# reload zsh config
alias reload!='source ~/.zshrc'

# let's use nvim instead
alias vim='nvim'

# Filesystem aliases
alias ..='cd ..'

# Helpers
alias df='df -h' # disk free, in Gigabytes, not bytes
alias du='du -h -c' # calculate disk usage for a folder

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"

# File size
alias fs="stat -f \"%z bytes\""

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
  alias "$method"="lwp-request -m '$method'"
done

# set homebrew ownership
alias brewfix="sudo chown -R $(whoami) /usr/local/bin /usr/local/etc /usr/local/sbin /usr/local/share /usr/local/share/doc && chmod u+w /usr/local/bin /usr/local/etc /usr/local/sbin /usr/local/share /usr/local/share/doc"

alias t="tmux-sessionizer"

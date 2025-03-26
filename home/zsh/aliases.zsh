# Source (mostly): https://github.com/nicknisi/dotfiles/blob/main/config/zsh/.zsh_aliases

# reload zsh config
alias reload!="source $HOME/.config/zsh/.zshrc"

# let's use nvim instead
alias vim="nvim"

# go up
alias ..="cd .."
alias ...='cd ../..'
alias ....="cd ../../.."
alias .....="cd ../../../.."

# show me what i grepped
alias grep="grep --color=auto"

# disk stuff
alias df="df -h" # disk free, in Gigabytes, not bytes
alias du="du -h -c" # calculate disk usage for a folder
alias fs="stat -f \"%z bytes\""

# ip stuff
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"

# list path separated by new lines
alias path='echo $PATH | tr ":" "\n"'

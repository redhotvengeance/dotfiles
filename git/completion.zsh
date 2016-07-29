# Source: https://github.com/holman/dotfiles/blob/master/git/completion.zsh

completion='$(brew --prefix)/share/zsh/site-functions/_git'

if test -f $completion
then
  source $completion
fi

# unbind default prefix and set it to ctrl+a
unbind C-b
set -g prefix C-a
bind C-a send-prefix

# settings to make copy-mode more vim-like
unbind-key -T copy-mode-vi v
setw -g mode-keys vi
bind-key -T copy-mode-vi 'v' send -X begin-selection     # Begin selection in copy mode.
bind-key -T copy-mode-vi 'C-v' send -X rectangle-toggle  # Begin selection in copy mode.
bind-key -T copy-mode-vi 'y' send -X copy-selection      # Yank selection in copy mode.

# check for and load local bindings.sh
if-shell "[ -e $HOME/.dotfiles/home/tmux/bindings.sh.local ]" {
  source "$HOME/.dotfiles/home/tmux/bindings.sh.local"
}

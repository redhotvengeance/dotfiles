# unbind default prefix and set it to Ctrl+a
unbind C-b
set -g prefix C-a
bind C-a send-prefix

# for nested tmux sessions
bind-key a send-prefix

setw -g mode-keys vi
bind-key h select-pane -L
bind-key j select-pane -D
bind-key k select-pane -U
bind-key l select-pane -R

# more settings to make copy-mode more vim-like
bind-key -T copy-mode-vi 'v' send -X begin-selection
bind-key -T copy-mode-vi 'C-v' send -X rectangle-toggle
bind-key -T copy-mode-vi 'y' send -X copy-selection

bind-key -r t run-shell "tmux neww ~/.dotfiles/bin/tmux-sessionizer"

# check for and load local bindings.sh
if-shell '[ -e ~/.dotfiles/tmux/bindings.sh.local ]' {
  source ~/.dotfiles/tmux/bindings.sh.local
}

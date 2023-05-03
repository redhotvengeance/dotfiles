# Inspired by: https://github.com/nicknisi/dotfiles/blob/master/tmux/tmux.conf.symlink

# unbind default prefix and set it to Ctrl+a
unbind C-b
set -g prefix C-a
bind C-a send-prefix

# for nested tmux sessions
bind-key a send-prefix

# reload config file
bind r source-file ~/.tmux.conf \; display "Config Reloaded!"

# quickly open a new window
bind N new-window

# split window and fix path for tmux 1.9
bind | split-window -h -c "#{pane_current_path}"
bind - split-window -v -c "#{pane_current_path}"

# synchronize all panes in a window
bind y setw synchronize-panes on

# stop synchronizing all panes in a window
bind Y setw synchronize-panes off

# pane movement shortcuts
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

bind -r C-h select-window -t :-
bind -r C-l select-window -t :+

# resize pane shortcuts
bind -r H resize-pane -L 10
bind -r J resize-pane -D 10
bind -r K resize-pane -U 10
bind -r L resize-pane -R 10

# more settings to make copy-mode more vim-like
bind Escape copy-mode
unbind p
bind p paste-buffer
bind-key -t vi-copy v begin-selection
bind-key -t vi-copy y copy-pipe "pbcopy"
unbind -t vi-copy Enter
bind-key -t vi-copy Enter copy-pipe "pbcopy"

# make copy-mode more mouse-friendly
bind-key -t vi-copy WheelUpPane scroll-up
bind-key -t vi-copy WheelDownPane scroll-down
bind-key -t vi-copy MouseDragEnd1Pane copy-pipe "pbcopy"

# check for and load local bindings.sh
if-shell '[ -e ~/.dotfiles/tmux/bindings.sh.local ]' {
  source ~/.dotfiles/tmux/bindings.sh.local
}

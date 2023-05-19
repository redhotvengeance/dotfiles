set -g @plugin "tmux-plugins/tpm"
set -g @plugin "tmux-plugins/tmux-sensible"
set -g @plugin "tmux-plugins/tmux-pain-control"
set -g @plugin "christoomey/vim-tmux-navigator"
set -g @plugin 'catppuccin/tmux'

# catppuccin
set -g @catppuccin_window_tabs_enabled "on"
set -g @catppuccin_host "on"

run "$HOME/.tmux/plugins/tpm/tpm"

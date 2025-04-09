# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

function make_monitors {
  source "$HELPERS_DIR/monitors.bash"

  echo "output eDP-1 scale ${scale[$CURR_HOST]}" > "$HOME_DIR/sway/monitors"

  for m in "${external[@]}"; do
    echo "output \"$m\" mode ${res[$m]}@${hz[$m]}Hz scale ${scale[$m]}" >> "$HOME_DIR/sway/monitors"
  done
}

if [[ "$SYSTEM" == "arch" ]]; then
  pacman sway swayidle swaylock

  make_monitors
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  apt sway swayidle swaylock

  make_monitors
fi

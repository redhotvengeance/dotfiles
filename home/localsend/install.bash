# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  paru localsend

  $cmd sudo ufw allow 53317
  $cmd sudo ufw reload
fi

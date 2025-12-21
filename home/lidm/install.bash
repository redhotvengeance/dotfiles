# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  # dependencies
  pacman base-devel
fi

out=$(pull_or_clone https://github.com/javalsai/lidm "$SOURCE_DIR/lidm" master)
if [[ "$out" != "Already up to date." ]]; then
  $cmd cd "$SOURCE_DIR/lidm"
  $cmd make
  $cmd sudo make install
  $cmd sudo make install-service
fi

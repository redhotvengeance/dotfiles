# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "macos" ]]; then
  brew elgato-camera-hub elgato-stream-deck
fi

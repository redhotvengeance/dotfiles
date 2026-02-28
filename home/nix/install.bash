# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  if ! type -P nix; then
    if [[ "$dry" == "1" ]]; then
      echo "[DRY RUN]: curl -fsSL https://install.determinate.systems/nix | sh -s -- install"
    else
      curl -fsSL https://install.determinate.systems/nix | sh -s -- install
    fi
  fi
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  apt nix

  sudo usermod -a -G nix-users "$USER"
fi

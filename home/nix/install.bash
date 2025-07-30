# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  if [[ ! $(which nix) ]]; then
    if [[ "$dry" == "1" ]]; then
      echo [DRY RUN]: "curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install"
    else
      curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
    fi
  fi
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  apt nix

  sudo usermod -a -G nix-users "$USER"
fi

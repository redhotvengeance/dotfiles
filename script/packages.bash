# shellcheck source=./common.bash
source "$SCRIPT_DIR/common.bash"

function apt {
  $cmd sudo apt install --yes "$@"
}

function flatpak {
  $cmd sudo flatpak install --or-update --assumeyes "$@"
}

function nix {
  $cmd "$(which nix)" profile install "nixpkgs#$1"
  $cmd "$(which nix)" profile upgrade "$([ $2 ] && echo $2 || echo $1)"
}

function pacman {
  $cmd sudo pacman --sync --needed --noconfirm "$@"
}

function pull_or_clone {
  if [[ -d "$2" ]]; then
    $cmd git -C "$2" pull
  else
    $cmd git clone --depth 1 $([ "$3" ] && echo "--branch $3" || echo "") "$1" "$2"
  fi
}

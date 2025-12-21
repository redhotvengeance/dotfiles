# shellcheck source=./common.bash
source "$SCRIPT_DIR/common.bash"

function apt {
  $cmd sudo apt install --yes "$@"
}

function nix {
  $cmd "$(which nix)" profile install --impure $([[ "$1" =~ "github:" ]] && echo "$1" || echo "nixpkgs#$1")
  $cmd "$(which nix)" profile upgrade --impure $([ "$2" ] && echo "$2" || echo "$1")
}

function pacman {
  $cmd sudo pacman --sync --needed --noconfirm "$@"
}

function paru {
  $cmd "$(which paru)" --sync --needed --noconfirm "$@"
}

function pull_or_clone {
  if [[ -d "$2" ]]; then
    $cmd git -C "$2" pull
  else
    $cmd git clone --depth 1 $([ "$3" ] && echo "--branch $3" || echo "") "$1" "$2"
  fi
}

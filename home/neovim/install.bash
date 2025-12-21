# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  pacman bob
  $cmd bob use nightly
  $cmd bob update --all
fi

if [[ "$SYSTEM" == "glinux" ]]; then
  # dependencies
  apt ninja-build gettext cmake curl build-essential

  out=$(pull_or_clone https://github.com/neovim/neovim "$SOURCE_DIR/neovim" nightly)
  if [[ "$out" != "Already up to date." ]]; then
    $cmd cd "$SOURCE_DIR/neovim"
    $cmd make CMAKE_BUILD_TYPE=RelWithDebInfo
    $cmd sudo make install
  fi
fi

nix bash-language-server
nix vscode-css-languageserver
nix gopls
nix htmx-lsp
nix hyprls
nix vscode-json-languageserver
nix lua-language-server
nix marksman
nix pyright
nix sqls
nix tailwindcss-language-server
nix templ
nix typescript-language-server
nix yaml-language-server

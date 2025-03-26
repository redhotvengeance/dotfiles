# zsh_unplugged
# Source: https://raw.githubusercontent.com/mattmc3/zsh_unplugged/refs/heads/main/examples/zshrc.zsh

ZPLUGINDIR=$ZSH/plugins

function plugin-load {
  local repo plugdir initfile initfiles=()
  for repo in $@; do
    plugdir=$ZPLUGINDIR/${repo:t}
    initfile=$plugdir/${repo:t}.plugin.zsh
    if [[ ! -d $plugdir ]]; then
      echo "Cloning $repo..."
      git clone -q --depth 1 --recursive --shallow-submodules \
        https://github.com/$repo $plugdir
    fi
    if [[ ! -e $initfile ]]; then
      initfiles=($plugdir/*.{plugin.zsh,zsh-theme,zsh,sh}(N))
      (( $#initfiles )) || { echo >&2 "No init file found '$repo'." && continue }
      ln -sf $initfiles[1] $initfile
    fi
    fpath+=$plugdir
    (( $+functions[zsh-defer] )) && zsh-defer . $initfile || . $initfile
  done
}

plugins=(
  sindresorhus/pure
  rummik/zsh-tailf
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-history-substring-search
  zsh-users/zsh-autosuggestions
)

plugin-load $plugins

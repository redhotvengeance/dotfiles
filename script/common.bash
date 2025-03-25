declare cmd
declare dry

function log {
  if [[ $dry == "1" ]]; then
    echo [DRY RUN]: "$@"
  else
    echo "$@"
  fi
}

function link {
  $cmd sudo ln -snf "$@"
}

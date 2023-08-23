if test ! "$(which jq)"; then
  echo "Installing jq..."
  brew install jq
fi

if test ! "$(which jless)"; then
  echo "Installing jless..."
  brew install jless
fi

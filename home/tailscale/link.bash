if [[ "$SYSTEM" == "arch" || "$SYSTEM" == "cachy" ]]; then
  $cmd systemctl enable tailscaled
  $cmd systemctl start tailscaled
fi

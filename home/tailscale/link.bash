if [[ "$SYSTEM" == "arch" ]]; then
  $cmd systemctl enable tailscaled
  $cmd systemctl start tailscaled
fi

# shellcheck source=../../script/packages.bash
source "$SCRIPT_DIR/packages.bash"

if [[ "$SYSTEM" == "arch" ]]; then
  if ! grep -q "^\[multilib\]" /etc/pacman.conf; then
    echo "enabling multilib..."
    $cmd sudo sed -i '/^#\[multilib\]/,/^#Include/ s/^#//' /etc/pacman.conf

    $cmd sudo pacman -Sy
  else
    echo "multilib is already enabled"
  fi

  pacman gamescope goverlay mangohud
  pacman steam
fi

if [[ "$SYSTEM" == "cachy" ]]; then
  pacman cachyos-gaming-meta
  pacman gamescope goverlay mangohud
  pacman steam
fi

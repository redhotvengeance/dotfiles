{ pkgs, ... }: {
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = false;

  environment.systemPackages = with pkgs; [
    bluetuith
  ];
}

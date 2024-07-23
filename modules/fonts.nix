{ pkgs, ... }: {
  fonts.packages = with pkgs; [
    font-awesome
    meslo-lgs-nf
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
    powerline-fonts
    powerline-symbols
  ];
}

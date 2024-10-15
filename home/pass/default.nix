{ pkgs, config, ... }: {
  programs.password-store = {
    enable = true;

    settings = {
      PASSWORD_STORE_DIR = "${config.home.homeDirectory}/.password-store";
    };
  };

  programs.browserpass.enable = true;

  home.packages = with pkgs; [
    asc-key-to-qr-code-gif
  ];
}

{ config, pkgs, host, ... }: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  home.packages = with pkgs; [
    gcc
    gnumake
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })

    # language servers
    nodePackages_latest.bash-language-server
    gopls
    lua-language-server
    marksman
    pyright
    sqls
    stylua
    tailwindcss-language-server
    templ
    nodePackages_latest.typescript-language-server
    yaml-language-server
    vscode-langservers-extracted
  ];

  home.file.".config/nvim".source = config.lib.file.mkOutOfStoreSymlink "${host.dotfiles}/home/nvim";
}

{ pkgs, ... }: {
  programs.lf = {
    enable = true;

    settings = {
      sixel = true;
    };

    previewer.source = (pkgs.writeShellScript "lf-previewer.sh" ''
      #!/bin/sh

      file="$1"
      shift

      case "$file" in
        *.jpg|*.jpeg|*.png|*.gif|*.bmp|*.webp)
          chafa -f sixel -s "$2x$3" --animate off --polite on "$file"
          ;;
        *)
          cat "$file"
          ;;
      esac
    '');
  };

  home.packages = with pkgs; [
    chafa
  ];
}

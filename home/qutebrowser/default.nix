{ pkgs, ... }: {
  programs.qutebrowser = {
    enable = true;
  };

  home.packages = with pkgs; [
    (
      pkgs.writeShellScriptBin "browser" ''
        BASE_DIRS="$HOME/.browser"

        action="open"
        dir="personal"
        url=""

        while [[ $# -gt 0 ]]; do
          key="$1"
          case $key in
            add)
              action="add"
              shift
              dir="$1"
              ;;
            list)
              action="list"
              ;;
            open)
              action="open"
              shift
              dir="$1"
              ;;
            remove)
              action="remove"
              shift
              dir="$1"
              ;;
            *)
              if [ -d "$BASE_DIRS/$1" ]; then
                dir="$1"
              else
                url="$1"
              fi
              ;;
          esac

          shift
        done

        add() {
          if [ -d "$BASE_DIRS/$dir" ]; then
            echo "That browser profile already exists."
            exit 1
          fi

          mkdir "$BASE_DIRS/$dir"
        }

        list() {
          ls "$BASE_DIRS"
        }

        open() {
          if [ ! -d "$BASE_DIRS/$dir" ]; then
            echo "That browser profile does not exist."
            exit 1
          fi

          \qutebrowser -B "$BASE_DIRS/$dir" --set statusbar.widgets "[\"keypress\", \"search_match\", \"url\", \"scroll\", \"history\", \"tabs\", \"progress\", \"text:[$dir]\"]" "$url" &
        }

        remove() {
          if [ ! -d "$BASE_DIRS/$dir" ]; then
            echo "That browser profile does not exist."
            exit 1
          fi

          read -p "Are you sure you want to delete \"$dir\"? [yn]" yn

          if [ "$yn" == "y" ]; then
            rm -rf "$BASE_DIRS/$dir"
          fi
        }

        $action
      ''
    )
  ];

  programs.zsh.shellAliases = {
    qutebrowser = "browser";
  };
}

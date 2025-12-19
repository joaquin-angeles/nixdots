{ config, pkgs, ... }:

{
  programs.zsh.initContent = ''
    # Cursor configuration
    printf '\e[5 q'

    # Fetch
    if command -v fastfetch >/dev/null 2>&1; then
      fastfetch
      echo ""
    fi

    # Prompt
    source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme

    # P10K configuration
    [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

    # Better CD
    cd() {
      z "$@" && eza --icons
    }

    # Better FZF (faster preview)
    fzf() {
      command fzf --preview '
        if [ -d {} ]; then
          eza --icons -lh --color=always {} || ls -lh {}
        else
          bat --color=always --theme=base16 --style=plain --paging=never {}
        fi
      '
    }

    # Better yazi
    yz() {
      local tmp
      tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
      yazi "$@" --cwd-file="$tmp"
      printf '\e[5 q'
      if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -n "$dir" ] && [ -d "$dir" ]; then
          cd "$dir" || return 1
        fi
      fi
    }

    # Set window titles
    precmd() {
      print -Pn "\e]0;%~\a"
      printf '\e[5 q'
    }
  '';
}

{ config, pkgs, ... }:

{
  programs.zsh.initContent = ''
    # Cursor and title configuration
    precmd() {
      printf '\e[1 q'
      print -Pn "\e]0;%n@%m: %~\a"
    }

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
  '';
}

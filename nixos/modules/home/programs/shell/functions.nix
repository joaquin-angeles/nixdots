{ config, pkgs, ... }:

{
  programs.zsh.initContent = ''
    # Fetch with nitch
    if command -v nitch >/dev/null 2>&1; then
      nitch
      echo ""
    fi

    # Prompt
    source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme

    # P10K configuration
    [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

    # Better CD
    cd() {
      z "$@" && eza
    }

    # Better FZF
    fzf() {
      command fzf --preview '
        if [ -d {} ]; then
          eza -l --color=always {} || ls -la {}
        else
          bat --color=always --theme=base16 --style=plain {}
        fi
      ' "$@"
    }

    # Better yazi
    yzcd() {
      local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
      yazi "$@" --cwd-file="$tmp"
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
      print -Pn "\e]0;%n@%m:%~\a"
    }
  '';
}

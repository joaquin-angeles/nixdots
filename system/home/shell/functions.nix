{ config, pkgs, ... }:

{
    programs.zsh.initContent = ''
        # Fetch
        if command -v fastfetch >/dev/null 2>&1; then
            fastfetch
            echo ""
        fi

        # P10K instant prompt
        if [[ -r "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh" ]]; then
            source "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh"
        fi

        # P10K configuration
        source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme # Prompt
        [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

        # Cursor and title configuration
        precmd() {
            printf '\e[1 q'
            print -Pn "\e]0;%n@%m: %~\a"
        }

        # Better CD
        cd() {
            z "$@" && eza --icons always --group-directories-first --git
        }

        # Better FZF (faster preview)
        fzf() {
          command fzf --preview '
            if [ -d {} ]; then
                eza --icons always --group-directories-first --git --color=always {} || ls -lh {}
            else
                bat --color=always {}
            fi
          '
        }
    '';
}

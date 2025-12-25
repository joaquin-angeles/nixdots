{ config, pkgs, lib, ... }:

{
    programs.zsh = {
        initContent = lib.mkMerge [
            # P10K instant prompt
            (lib.mkBefore ''
                # P10K instant prompt
                if [[ -r "${config.xdg.cacheHome}/p10k-instant-prompt-${config.home.username}.zsh" ]]; then
                  source "${config.xdg.cacheHome}/p10k-instant-prompt-${config.home.username}.zsh"
                fi
            '')

            # Everything else
            ''
                # P10K configuration
                source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme # Prompt
                [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

                # Cursor and title configuration
                precmd() {
                    printf '\e[1 q'
                    print -Pn "\e]0;%n@%m: %~\a"
                }

                # Better FZF (faster preview)
                function ff() {
                  command fzf --preview '
                    if [ -d {} ]; then
                        eza --icons always --group-directories-first --git --color=always {} || ls -lh {}
                    else
                        bat --color=always {}
                    fi
                  '
                }
            ''
        ];
    };
}

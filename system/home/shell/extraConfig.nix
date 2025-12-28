{ config, lib, ... }:

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
                source $HOME/.zsh/plugins/powerlevel10k/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
                [[ ! -f $HOME/.p10k.zsh ]] || source $HOME/.p10k.zsh

                # Cursor and title configuration
                autoload -Uz add-zsh-hook
                add-zsh-hook precmd () {
                    printf '\e[1 q'
                    print -Pn "\e]0;%n@%m: %~\a"
                }

                # Better FZF (faster preview)
                function ff() {
                    command fzf --preview '
                        if [ -d {} ]; then
                            command -v eza >/dev/null && eza --icons always --group-directories-first --git --color=always {} || ls -lh {}
                        else
                            command -v bat >/dev/null && bat --color=always {} || cat {}
                        fi
                    '
                }
            ''
        ];
    };
}

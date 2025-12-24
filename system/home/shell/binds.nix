{ config, pkgs, ... }:

{
    programs.zsh.initContent = ''
        # Keybindings
        stty intr "^G"
        bindkey "^c" kill-whole-line
        bindkey "^j" history-search-forward
        bindkey "^k" history-search-backward
        bindkey "^r" fzf-history-widget
    '';
}

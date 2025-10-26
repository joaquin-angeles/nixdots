{ config, pkgs, ... }:

{
  programs.zsh.initExtra = ''
    # Keybindings
    stty intr "^G"
    bindkey "^c" kill-whole-line
    bindkey "^a" beginning-of-line
    bindkey "^e" end-of-line
    bindkey "^j" history-search-forward
    bindkey "^k" history-search-backward
    bindkey "^r" fzf-history-widget
  '';
}

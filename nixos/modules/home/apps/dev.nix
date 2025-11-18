{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bat
    btop
    cliphist
    eza
    neovim
    nitch
    ripgrep
    stow
    tmux
  ];
}

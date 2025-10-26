{ config, lib, pkgs, ... }:

{
  # User packages
  home.packages = with pkgs; [
    bat
    bibata-cursors
    btop
    chafa
    cliphist
    eza
    file-roller
    foot
    grim
    hyprlock
    hyprpicker
    hyprshot
    imv
    kdePackages.qt6ct
    kdePackages.qtstyleplugin-kvantum
    lazygit
    libnotify
    libsForQt5.qt5ct
    libsForQt5.qtstyleplugin-kvantum
    mako
    neovim
    nwg-look
    ripgrep
    stow
    unstable.impala
    unstable.swayosd
    unstable.wiremix
    tmux
    waybar
    wbg
    yazi
    zsh-powerlevel10k
  ];
}

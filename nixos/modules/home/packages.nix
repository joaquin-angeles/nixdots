{ config, lib, pkgs, ... }:

{
  # User packages
  home.packages = with pkgs; [
    bat
    bibata-cursors
    btop
    cliphist
    eza
    file-roller
    foot
    grim
    hyprpicker
    hyprsunset
    imv
    kdePackages.qt6ct
    kdePackages.qtstyleplugin-kvantum
    libnotify
    libsForQt5.qt5ct
    libsForQt5.qtstyleplugin-kvantum
    mako
    mpv
    neovim
    nwg-look
    ripgrep
    stow
    unstable.hyprlock
    unstable.hyprshot
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

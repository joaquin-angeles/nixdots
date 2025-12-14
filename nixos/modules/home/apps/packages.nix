{ pkgs, ... }:

{
  # User packages
  home.packages = with pkgs; [
    bat
    btop
    cliphist
    eza
    fd
    file-roller
    hyprlock
    hyprpicker
    imv
    kdePackages.qt6ct
    kdePackages.qtstyleplugin-kvantum
    lazygit
    libnotify
    libsForQt5.qt5ct
    libsForQt5.qtstyleplugin-kvantum
    mako
    mpv
    ripgrep
    stow
    unstable.alacritty-graphics
    unstable.hyprshot
    unstable.impala
    unstable.neovim
    unstable.sunsetr
    unstable.swayosd
    unstable.wiremix
    waybar
    wbg
    yazi
    zellij
    zsh-powerlevel10k
  ];
}

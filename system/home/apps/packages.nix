{ inputs, pkgs, ... }:

{
  # User packages
  home.packages = with pkgs; [
    alacritty
    btop
    celluloid
    cliphist
    file-roller
    hyprlock
    hyprpicker
    imv
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    kdePackages.qt6ct
    kdePackages.qtstyleplugin-kvantum
    lazygit
    libnotify
    libsForQt5.qt5ct
    libsForQt5.qtstyleplugin-kvantum
    mako
    ripgrep
    stow
    unstable.hyprshot
    unstable.impala
    unstable.neovim
    unstable.sunsetr
    unstable.swayosd
    unstable.wiremix
    waybar
    wbg
    zellij
    zsh-powerlevel10k
  ];
}

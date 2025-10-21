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
    lf
    libnotify
    libsForQt5.qt5ct
    libsForQt5.qtstyleplugin-kvantum
    mako
    neovim
    nitch
    nwg-look
    ripgrep
    stow
    unstable.impala
    unstable.swayosd
    unstable.wiremix
    tmux
    waybar
    wbg
    zsh-powerlevel10k
  ];

  # FZF
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  # Rofi
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    plugins = [pkgs.rofi-emoji];
  };

  # Zoxide
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
}

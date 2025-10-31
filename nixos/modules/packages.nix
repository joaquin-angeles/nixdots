{ config, lib, pkgs, ... }:

{
  # System packages
  environment.systemPackages = with pkgs; [
    blueman
    brightnessctl
    wl-clipboard-rs
    xdg-user-dirs
    zenity
  ];

  # Hyprland
  programs.hyprland.enable = true;

  # Thunar
  programs.thunar = {
    enable = true;
    plugins = with pkgs.xfce; [
      thunar-archive-plugin
      thunar-volman
    ];
  };
  programs.xfconf.enable = true; # Xfconf
  programs.zsh.enable = true; # Zsh
}

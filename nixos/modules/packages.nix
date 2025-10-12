{ config, lib, pkgs, ... }:

{
  # System packages
  environment.systemPackages = with pkgs; [
    blueman
    brightnessctl
    wl-clipboard
    xdg-user-dirs
    zenity
  ];
}

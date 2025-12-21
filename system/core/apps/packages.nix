{ config, lib, pkgs, ... }:

{
  # System packages
  environment.systemPackages = with pkgs; [
    brightnessctl
    lutris
    nautilus
    unstable.bluetui
    wl-clipboard
    xdg-user-dirs
    zenity
  ];
}

{ config, lib, pkgs, ... }:

{
  # System packages
  environment.systemPackages = with pkgs; [
    brightnessctl
    nautilus
    unstable.bluetui
    wl-clipboard
    xdg-user-dirs
    zenity
    (lutris.override {
      extraLibraries =  pkgs: [
        winetricks
        unstable.wineWowPackages.stagingFull
      ];
    })
  ];
}

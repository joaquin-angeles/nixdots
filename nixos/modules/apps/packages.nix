{ config, lib, pkgs, ... }:

{
  # System packages
  environment.systemPackages = with pkgs; [
    blueman
    brightnessctl
    nautilus
    wl-clipboard
    xdg-user-dirs
    zenity

    (lutris.override {
      # Run windows games
      extraPkgs = pkgs: [
        pkgs.wineWowPackages.stagingFull
        pkgs.winetricks
      ];
    })
  ];
}

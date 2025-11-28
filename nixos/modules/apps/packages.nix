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
      extraLibraries = pkgs: [
        pkgs.alsa-lib
        pkgs.pulseaudio
      ];

      # Run windows games
      extraPkgs = pkgs: [
        pkgs.wineWowPackages.stagingFull
        pkgs.winetricks
      ];
    })
  ];
}

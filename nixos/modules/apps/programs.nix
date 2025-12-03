{ config, lib, pkgs, ... }:

{
  programs.hyprland.enable = true; # Hyprland
  programs.mango.enable = true; # MangoWC

  # Steam
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };

  programs.zsh.enable = true; # zsh
}

{ config, lib, pkgs, ... }:

{
  programs.hyprland.enable = true; # Hyprland

  # Steam
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
    gamescopeSession.enable = true;
  };

  programs.zsh.enable = true; # zsh
}

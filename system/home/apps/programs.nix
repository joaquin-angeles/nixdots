{ config, pkgs, ... }:
{
  # fzf
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  # Lutris
  programs.lutris = {
    enable = true;
    protonPackages = with pkgs; [ unstable.proton-ge-bin ];
    extraPackages = with pkgs; [
      gamemode
      gamescope
      mangohud
    ];
  };

  # NH
  programs.nh.enable = true;
  programs.nix-your-shell = {
    enable = true;
    enableZshIntegration = true;
    nix-output-monitor.enable = true;
  };

  # rofi
  programs.rofi = {
    enable = true;
    plugins = [ pkgs.rofi-emoji ];
  };

  # zoxide
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
}

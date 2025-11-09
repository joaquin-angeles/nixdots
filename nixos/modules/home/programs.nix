{ config, pkgs, ... }:

{
  # fzf
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  # rofi
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    plugins = [ pkgs.rofi-emoji ];
  };

  # Steam
  programs.steam.enable = true;

  # zoxide
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
}
